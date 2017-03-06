
.globl __ct__13JKRFileLoaderFv
__ct__13JKRFileLoaderFv: # 0x802c2dc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11JKRDisposerFv
    lwz     r31, 0x8(sp)
    lis     r3, 0x803e
    subi    r0, r3, 0x68
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x18
    addi    r4, r31, 0x0
    bl      __ct__10JSUPtrLinkFPv
    li      r0, 0x0
    stw     r0, 0x28(r31)
    mr      r3, r31
    stw     r0, 0x2c(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13JKRFileLoaderFv
__dt__13JKRFileLoaderFv: # 0x802c2e24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c2e94
    lis     r3, 0x803e
    subi    r0, r3, 0x68
    stw     r0, 0x0(r30)
    lwz     r0, -0x5f38(r13)
    cmplw   r0, r30
    bne-    branch_0x802c2e64
    li      r0, 0x0
    stw     r0, -0x5f38(r13)
branch_0x802c2e64:
    addic.  r0, r30, 0x18
    beq-    branch_0x802c2e78
    addi    r3, r30, 0x18
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802c2e78:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r31
    ble-    branch_0x802c2e94
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c2e94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl unmount__13JKRFileLoaderFv
unmount__13JKRFileLoaderFv: # 0x802c2eb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x34(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x802c2ef0
    subic.  r0, r4, 0x1
    stw     r0, 0x34(r3)
    bne-    branch_0x802c2ef0
    cmplwi  r3, 0x0
    beq-    branch_0x802c2ef0
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802c2ef0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getVolume__13JKRFileLoaderFPCc
getVolume__13JKRFileLoaderFPCc: # 0x802c2f00
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r3
    lwz     r31, 0x42b4(r4)
    b       branch_0x802c2f48

branch_0x802c2f24:
    lwz     r4, 0x0(r31)
    mr      r3, r30
    lwz     r4, 0x28(r4)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802c2f44
    lwz     r3, 0x0(r31)
    b       branch_0x802c2f54

branch_0x802c2f44:
    lwz     r31, 0xc(r31)
branch_0x802c2f48:
    cmplwi  r31, 0x0
    bne+    branch_0x802c2f24
    li      r3, 0x0
branch_0x802c2f54:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl changeDirectory__13JKRFileLoaderFPCc
changeDirectory__13JKRFileLoaderFPCc: # 0x802c2f6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r3, 0x8(sp)
    addi    r3, sp, 0x8
    bl      findVolume__13JKRFileLoaderFPPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802c2fa0
    lwz     r12, 0x0(r3)
    lwz     r4, 0x8(sp)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802c2fa0:
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl getGlbResource__13JKRFileLoaderFPCc
getGlbResource__13JKRFileLoaderFPCc: # 0x802c2fb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r3, 0x8(sp)
    addi    r3, sp, 0x8
    bl      findVolume__13JKRFileLoaderFPPCc
    cmplwi  r3, 0x0
    bne-    branch_0x802c2fd8
    li      r3, 0x0
    b       branch_0x802c2fec

branch_0x802c2fd8:
    lwz     r12, 0x0(r3)
    lwz     r4, 0x8(sp)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x802c2fec:
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader: # 0x802c2ffc
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    beq-    branch_0x802c3040
    mr      r3, r4
    lwz     r12, 0x0(r4)
    addi    r5, r30, 0x0
    li      r4, 0x0
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x802c307c

branch_0x802c3040:
    lis     r4, 0x8040
    lwz     r31, 0x42b4(r4)
    b       branch_0x802c3074

branch_0x802c304c:
    lwz     r3, 0x0(r31)
    addi    r5, r30, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x802c307c
    lwz     r31, 0xc(r31)
branch_0x802c3074:
    cmplwi  r31, 0x0
    bne+    branch_0x802c304c
branch_0x802c307c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl getResSize__13JKRFileLoaderFPvP13JKRFileLoader
getResSize__13JKRFileLoaderFPvP13JKRFileLoader: # 0x802c3094
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    li      r3, -0x1
    beq-    branch_0x802c30d4
    mr      r3, r4
    lwz     r12, 0x0(r4)
    mr      r4, r30
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    b       branch_0x802c310c

branch_0x802c30d4:
    lis     r4, 0x8040
    lwz     r31, 0x42b4(r4)
    b       branch_0x802c3104

branch_0x802c30e0:
    lwz     r3, 0x0(r31)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bge-    branch_0x802c310c
    lwz     r31, 0xc(r31)
branch_0x802c3104:
    cmplwi  r31, 0x0
    bne+    branch_0x802c30e0
branch_0x802c310c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl findVolume__13JKRFileLoaderFPPCc
findVolume__13JKRFileLoaderFPPCc: # 0x802c3124
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stw     r31, 0x144(sp)
    mr      r31, r3
    lwz     r5, 0x0(r3)
    lbz     r0, 0x0(r5)
    cmpwi   r0, 0x2f
    beq-    branch_0x802c3150
    lwz     r3, -0x5f38(r13)
    b       branch_0x802c319c

branch_0x802c3150:
    addi    r3, sp, 0x3c
    li      r4, 0x101
    bl      fetchVolumeName__13JKRFileLoaderFPclPCc
    stw     r3, 0x0(r31)
    lis     r4, 0x8040
    lwz     r31, 0x42b4(r4)
    b       branch_0x802c3190

branch_0x802c316c:
    lwz     r4, 0x0(r31)
    addi    r3, sp, 0x3c
    lwz     r4, 0x28(r4)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802c318c
    lwz     r3, 0x0(r31)
    b       branch_0x802c319c

branch_0x802c318c:
    lwz     r31, 0xc(r31)
branch_0x802c3190:
    cmplwi  r31, 0x0
    bne+    branch_0x802c316c
    li      r3, 0x0
branch_0x802c319c:
    lwz     r0, 0x14c(sp)
    lwz     r31, 0x144(sp)
    addi    sp, sp, 0x148
    mtlr    r0
    blr


.globl findFirstFile__13JKRFileLoaderFPCc
findFirstFile__13JKRFileLoaderFPCc: # 0x802c31b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x160(sp)
    stw     r31, 0x15c(sp)
    stw     r30, 0x158(sp)
    li      r30, 0x0
    stw     r29, 0x154(sp)
    mr      r29, r3
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x2f
    beq-    branch_0x802c31e4
    lwz     r0, -0x5f38(r13)
    b       branch_0x802c3234

branch_0x802c31e4:
    addi    r5, r29, 0x0
    addi    r3, sp, 0x44
    li      r4, 0x101
    bl      fetchVolumeName__13JKRFileLoaderFPclPCc
    lis     r4, 0x8040
    lwz     r31, 0x42b4(r4)
    mr      r29, r3
    b       branch_0x802c3228

branch_0x802c3204:
    lwz     r4, 0x0(r31)
    addi    r3, sp, 0x44
    lwz     r4, 0x28(r4)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802c3224
    lwz     r0, 0x0(r31)
    b       branch_0x802c3234

branch_0x802c3224:
    lwz     r31, 0xc(r31)
branch_0x802c3228:
    cmplwi  r31, 0x0
    bne+    branch_0x802c3204
    li      r0, 0x0
branch_0x802c3234:
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x802c3258
    lwz     r12, 0x0(r3)
    mr      r4, r29
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    mr      r30, r3
branch_0x802c3258:
    lwz     r0, 0x164(sp)
    mr      r3, r30
    lwz     r31, 0x15c(sp)
    lwz     r30, 0x158(sp)
    mtlr    r0
    lwz     r29, 0x154(sp)
    addi    sp, sp, 0x160
    blr


.globl fetchVolumeName__13JKRFileLoaderFPclPCc
fetchVolumeName__13JKRFileLoaderFPclPCc: # 0x802c3278
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    addi    r4, rtoc, 0x88
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802c32c4
    addi    r3, r29, 0x0
    subi    r4, r13, 0x75c0
    bl      strcpy
    subi    r3, r13, 0x75c0
    b       branch_0x802c3344

branch_0x802c32c4:
    lis     r3, 0x803b
    addi    r31, r31, 0x1
    subi    r4, r3, 0x5578
    b       branch_0x802c3310

branch_0x802c32d4:
    cmpwi   r30, 0x1
    ble-    branch_0x802c330c
    extsb   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x802c32f0
    li      r0, -0x1
    b       branch_0x802c32fc

branch_0x802c32f0:
    clrlwi  r0, r0, 24
    add     r3, r4, r0
    lbz     r0, 0x0(r3)
branch_0x802c32fc:
    extsb   r0, r0
    stb     r0, 0x0(r29)
    addi    r29, r29, 0x1
    subi    r30, r30, 0x1
branch_0x802c330c:
    addi    r31, r31, 0x1
branch_0x802c3310:
    lbz     r3, 0x0(r31)
    extsb.  r0, r3
    beq-    branch_0x802c3328
    extsb   r0, r3
    cmpwi   r0, 0x2f
    bne+    branch_0x802c32d4
branch_0x802c3328:
    li      r0, 0x0
    stb     r0, 0x0(r29)
    lbz     r0, 0x0(r31)
    extsb.  r0, r0
    bne-    branch_0x802c3340
    subi    r31, r13, 0x75c0
branch_0x802c3340:
    mr      r3, r31
branch_0x802c3344:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __sinit_JKRFileLoader_cpp
__sinit_JKRFileLoader_cpp: # 0x802c3360
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x42b4
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, 0x802c
    lis     r3, 0x8040
    subi    r5, r3, 0x2a88
    addi    r4, r4, 0x33ac
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__24JSUList_13JKRFileLoader_Fv
__dt__24JSUList_13JKRFileLoader_Fv: # 0x802c33ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c33e8
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802c33e8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c33e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

