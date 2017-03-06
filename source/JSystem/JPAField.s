
.globl __ct__12JPABaseFieldFv
__ct__12JPABaseFieldFv: # 0x80325464
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x3dd8
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    mr      r4, r31
    stw     r0, 0x8c(r31)
    bl      __ct__10JSUPtrLinkFPv
    li      r0, 0x0
    sth     r0, 0x54(r31)
    mr      r3, r31
    lfs     f1, 0x858(rtoc)
    stfs    f1, 0x20(r31)
    stfs    f1, 0x1c(r31)
    stfs    f1, 0x18(r31)
    stfs    f1, 0x84(r31)
    stfs    f1, 0x80(r31)
    stfs    f1, 0x7c(r31)
    stfs    f1, 0x24(r31)
    lfs     f0, 0x85c(rtoc)
    stfs    f0, 0x28(r31)
    stfs    f1, 0x2c(r31)
    lfs     f0, 0x860(rtoc)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f1, 0x40(r31)
    stfs    f0, 0x44(r31)
    stfs    f1, 0x48(r31)
    stfs    f0, 0x4c(r31)
    stfs    f1, 0x3c(r31)
    stb     r0, 0x52(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12JPABaseFieldFv
__dt__12JPABaseFieldFv: # 0x803254fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80325548
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x80325538
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x80325538:
    extsh.  r0, r31
    ble-    branch_0x80325548
    mr      r3, r30
    bl      __dl__FPv
branch_0x80325548:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set__12JPABaseFieldFv
set__12JPABaseFieldFv: # 0x80325564
    blr


.globl checkMaxDistance__12JPABaseFieldFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
checkMaxDistance__12JPABaseFieldFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x80325568
    lfs     f3, 0x0(r4)
    li      r0, 0x0
    lfs     f2, 0x0(r5)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x4(r5)
    fsubs   f2, f3, f2
    lfs     f3, 0x8(r4)
    fsubs   f1, f1, f0
    lfs     f0, 0x8(r5)
    fmuls   f2, f2, f2
    fsubs   f3, f3, f0
    lfs     f0, 0x88(r3)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x803255b8
    li      r0, 0x1
branch_0x803255b8:
    mr      r3, r0
    blr


.globl calcFieldFadeScale__12JPABaseFieldFf
calcFieldFadeScale__12JPABaseFieldFf: # 0x803255c0
    lhz     r0, 0x54(r3)
    li      r4, 0x0
    lfs     f4, 0x860(rtoc)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x803255dc
    li      r0, 0x1
    b       branch_0x803255e0

branch_0x803255dc:
    li      r0, 0x0
branch_0x803255e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x803255fc
    lfs     f0, 0x48(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x803255fc
    lfs     f4, 0x858(rtoc)
    li      r4, 0x1
branch_0x803255fc:
    lhz     r0, 0x54(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80325610
    li      r0, 0x1
    b       branch_0x80325614

branch_0x80325610:
    li      r0, 0x0
branch_0x80325614:
    clrlwi. r0, r0, 24
    beq-    branch_0x80325634
    lfs     f0, 0x4c(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80325634
    lfs     f4, 0x858(rtoc)
    li      r4, 0x1
branch_0x80325634:
    clrlwi. r0, r4, 24
    bne-    branch_0x803256dc
    lhz     r0, 0x54(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80325650
    li      r0, 0x1
    b       branch_0x80325654

branch_0x80325650:
    li      r0, 0x0
branch_0x80325654:
    clrlwi. r0, r0, 24
    beq-    branch_0x80325690
    lfs     f3, 0x44(r3)
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    bne-    branch_0x80325690
    lfs     f2, 0x4c(r3)
    lfs     f0, 0x858(rtoc)
    fsubs   f3, f2, f3
    fcmpo   cr0, f3, f0
    ble-    branch_0x803256dc
    fres    f3, f3
    fsubs   f0, f2, f1
    fmuls   f4, f3, f0
    b       branch_0x803256dc

branch_0x80325690:
    lhz     r0, 0x54(r3)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x803256a4
    li      r0, 0x1
    b       branch_0x803256a8

branch_0x803256a4:
    li      r0, 0x0
branch_0x803256a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x803256dc
    lfs     f3, 0x40(r3)
    fcmpo   cr0, f1, f3
    bge-    branch_0x803256dc
    lfs     f2, 0x48(r3)
    lfs     f0, 0x858(rtoc)
    fsubs   f3, f3, f2
    fcmpo   cr0, f3, f0
    ble-    branch_0x803256dc
    fres    f3, f3
    fsubs   f0, f1, f2
    fmuls   f4, f3, f0
branch_0x803256dc:
    fmr     f1, f4
    blr


.globl calcFieldVelocity__12JPABaseFieldFP11JPAParticle
calcFieldVelocity__12JPABaseFieldFP11JPAParticle: # 0x803256e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    mr      r30, r3
    lfs     f2, 0x84(r3)
    lfs     f1, 0x80(r3)
    lfs     f0, 0x7c(r3)
    stfs    f0, 0x14(sp)
    stfs    f1, 0x18(sp)
    stfs    f2, 0x1c(sp)
    lwz     r0, 0x10(r4)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8032572c
    li      r0, 0x1
    b       branch_0x80325730

branch_0x8032572c:
    li      r0, 0x0
branch_0x80325730:
    clrlwi. r0, r0, 24
    bne-    branch_0x80325794
    lfs     f1, 0x48(r31)
    mr      r3, r30
    bl      calcFieldFadeScale__12JPABaseFieldFf
    lfs     f0, 0x858(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80325764
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x18(sp)
    stfs    f0, 0x14(sp)
    b       branch_0x80325794

branch_0x80325764:
    lfs     f0, 0x860(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80325794
    lfs     f0, 0x14(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(sp)
    lfs     f0, 0x18(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x18(sp)
    lfs     f0, 0x1c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(sp)
branch_0x80325794:
    lbz     r0, 0x52(r30)
    cmpwi   r0, 0x1
    beq-    branch_0x803257f0
    bge-    branch_0x803257b0
    cmpwi   r0, 0x0
    bge-    branch_0x803257bc
    b       branch_0x8032583c

branch_0x803257b0:
    cmpwi   r0, 0x3
    bge-    branch_0x8032583c
    b       branch_0x8032580c

branch_0x803257bc:
    lfs     f1, 0x94(r31)
    lfs     f0, 0x14(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x18(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    b       branch_0x8032583c

branch_0x803257f0:
    mr      r3, r31
    lwz     r12, 0x58(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    b       branch_0x8032583c

branch_0x8032580c:
    lfs     f1, 0x88(r31)
    lfs     f0, 0x14(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x88(r31)
    lfs     f1, 0x8c(r31)
    lfs     f0, 0x18(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(r31)
    lfs     f1, 0x90(r31)
    lfs     f0, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x90(r31)
branch_0x8032583c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl affect__12JPABaseFieldFP11JPAParticle
affect__12JPABaseFieldFP11JPAParticle: # 0x80325854
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadFieldBlock__12JPABaseFieldFP12JPADataBlock
loadFieldBlock__12JPABaseFieldFP12JPADataBlock: # 0x80325874
    mflr    r0
    lis     r9, 0x803b
    stw     r0, 0x4(sp)
    subi    r0, r9, 0xf0c
    lis     r8, 0x803e
    stwu    sp, -0x50(sp)
    lis     r7, 0x803e
    lis     r6, 0x803e
    stw     r31, 0x4c(sp)
    addi    r31, r6, 0x1c8
    stw     r30, 0x48(sp)
    addi    r30, r7, 0x160
    stw     r29, 0x44(sp)
    addi    r29, sp, 0x20
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r4)
    stw     r29, 0x1c(sp)
    lwz     r10, 0x1c(sp)
    stw     r0, 0x0(r10)
    li      r0, 0x0
    addi    r9, r10, 0x0
    stb     r0, 0x4(r10)
    addi    r0, r8, 0x184
    addi    r3, r10, 0x0
    stw     r0, 0x0(r10)
    stw     r30, 0x0(r10)
    stw     r31, 0x0(r10)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r12, 0x0(r29)
    mr      r3, r29
    li      r4, 0xc
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x50
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x51
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x52
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x53
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x54
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x2
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x3c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x2c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x30
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x34
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x34(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x40(r28)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x34(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x44(r28)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x34(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x48(r28)
    addi    r3, r29, 0x0
    addi    r4, sp, 0x34
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x34(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x4c(r28)
    addi    r3, r29, 0x0
    li      r4, 0x0
    stw     r31, 0x20(sp)
    stw     r30, 0x20(sp)
    bl      __dt__14JSUInputStreamFv
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl __ct__15JPAGravityFieldFv
__ct__15JPAGravityFieldFv: # 0x80325ad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3dc0
    stw     r0, 0x8c(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stb     r0, 0x50(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15JPAGravityFieldFv
__dt__15JPAGravityFieldFv: # 0x80325b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80325b70
    lis     r3, 0x803e
    addi    r0, r3, 0x3dc0
    stw     r0, 0x8c(r30)
    beq-    branch_0x80325b60
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x80325b60
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x80325b60:
    extsh.  r0, r31
    ble-    branch_0x80325b70
    mr      r3, r30
    bl      __dl__FPv
branch_0x80325b70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set__15JPAGravityFieldFv
set__15JPAGravityFieldFv: # 0x80325b8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f2, 0x2c(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x10(sp)
    stfs    f1, 0x14(sp)
    stfs    f2, 0x18(sp)
    lhz     r0, 0x54(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80325bd0
    li      r0, 0x1
    b       branch_0x80325bd4

branch_0x80325bd0:
    li      r0, 0x0
branch_0x80325bd4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80325bec
    addi    r4, sp, 0x10
    addi    r3, r3, 0x6c
    addi    r5, r4, 0x0
    bl      PSMTXMultVec
branch_0x80325bec:
    lfs     f1, 0x10(r31)
    lfs     f0, 0x10(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r31)
    lfs     f0, 0x14(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r31)
    lfs     f0, 0x18(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__11JPAAirFieldFv
__ct__11JPAAirFieldFv: # 0x80325c28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3da8
    stw     r0, 0x8c(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stb     r0, 0x50(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl set__11JPAAirFieldFv
set__11JPAAirFieldFv: # 0x80325c6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f0, 0x24(r30)
    mr      r31, r3
    stfs    f0, 0x70(r30)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x74(r30)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x78(r30)
    lhz     r0, 0x54(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80325cb8
    li      r0, 0x1
    b       branch_0x80325cbc

branch_0x80325cb8:
    li      r0, 0x0
branch_0x80325cbc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80325cd4
    addi    r4, r30, 0x70
    addi    r3, r31, 0x6c
    addi    r5, r4, 0x0
    bl      PSMTXMultVec
branch_0x80325cd4:
    lfs     f1, 0x10(r30)
    lfs     f0, 0x70(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r30)
    lfs     f0, 0x74(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r30)
    lfs     f0, 0x78(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r30)
    lhz     r0, 0x54(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x80325d10
    li      r0, 0x1
    b       branch_0x80325d14

branch_0x80325d10:
    li      r0, 0x0
branch_0x80325d14:
    clrlwi. r0, r0, 24
    beq-    branch_0x80325d9c
    lfs     f1, 0x864(rtoc)
    lfs     f0, 0x30(r30)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r4, -0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    stfs    f0, 0x64(r30)
    lhz     r0, 0x54(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80325d64
    li      r0, 0x1
    b       branch_0x80325d68

branch_0x80325d64:
    li      r0, 0x0
branch_0x80325d68:
    clrlwi. r0, r0, 24
    bne-    branch_0x80325d84
    addi    r3, r31, 0x6c
    addi    r4, r30, 0x18
    addi    r5, r30, 0x58
    bl      PSMTXMultVec
    b       branch_0x80325d9c

branch_0x80325d84:
    lfs     f0, 0x18(r30)
    stfs    f0, 0x58(r30)
    lfs     f0, 0x1c(r30)
    stfs    f0, 0x5c(r30)
    lfs     f0, 0x20(r30)
    stfs    f0, 0x60(r30)
branch_0x80325d9c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl affect__11JPAAirFieldFP11JPAParticle
affect__11JPAAirFieldFP11JPAParticle: # 0x80325db4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stfd    f29, 0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lhz     r3, 0x54(r3)
    clrlwi. r0, r3, 31
    beq-    branch_0x80325df0
    li      r0, 0x1
    b       branch_0x80325df4

branch_0x80325df0:
    li      r0, 0x0
branch_0x80325df4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80325ee0
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80325e0c
    li      r0, 0x1
    b       branch_0x80325e10

branch_0x80325e0c:
    li      r0, 0x0
branch_0x80325e10:
    clrlwi. r0, r0, 24
    bne-    branch_0x80325e40
    lfs     f0, 0x58(r30)
    lfs     f1, 0x20(r31)
    lfs     f3, 0x24(r31)
    fsubs   f31, f1, f0
    lfs     f2, 0x5c(r30)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x60(r30)
    fsubs   f30, f3, f2
    fsubs   f29, f1, f0
    b       branch_0x80325e64

branch_0x80325e40:
    lfs     f0, 0x58(r30)
    lfs     f1, 0x2c(r31)
    lfs     f3, 0x30(r31)
    fsubs   f31, f1, f0
    lfs     f2, 0x5c(r30)
    lfs     f1, 0x34(r31)
    lfs     f0, 0x60(r30)
    fsubs   f30, f3, f2
    fsubs   f29, f1, f0
branch_0x80325e64:
    fmuls   f1, f30, f30
    lfs     f0, 0x868(rtoc)
    fmadds  f1, f31, f31, f1
    fmadds  f1, f29, f29, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80325e90
    lfs     f5, 0x858(rtoc)
    fmr     f1, f5
    fmr     f4, f1
    b       branch_0x80325ea8

branch_0x80325e90:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x860(rtoc)
    fmuls   f0, f0, f1
    fmuls   f4, f31, f0
    fmuls   f1, f30, f0
    fmuls   f5, f29, f0
branch_0x80325ea8:
    lfs     f0, 0x74(r30)
    lfs     f2, 0x70(r30)
    fmuls   f1, f0, f1
    lfs     f3, 0x78(r30)
    lfs     f0, 0x64(r30)
    fmadds  f1, f2, f4, f1
    fmadds  f1, f3, f5, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80325eec
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
    b       branch_0x80325eec

branch_0x80325ee0:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
branch_0x80325eec:
    lhz     r0, 0x54(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80325f00
    li      r0, 0x1
    b       branch_0x80325f04

branch_0x80325f00:
    li      r0, 0x0
branch_0x80325f04:
    clrlwi. r0, r0, 24
    beq-    branch_0x80325fc8
    mr      r3, r31
    lwz     r12, 0x58(r31)
    addi    r4, sp, 0x28
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x28(sp)
    lfs     f0, 0x2c(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x30(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x858(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80325f58
    b       branch_0x80325f7c

branch_0x80325f58:
    frsqrte f3, f4
    lfs     f2, 0x86c(rtoc)
    lfs     f0, 0x870(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80325f7c:
    lfs     f0, 0x14(r30)
    fcmpo   cr0, f4, f0
    ble-    branch_0x80325fc8
    fdivs   f1, f0, f4
    lfs     f0, 0x28(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x28
    fmuls   f0, f0, f1
    stfs    f0, 0x28(sp)
    lfs     f0, 0x2c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x30(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(sp)
    lwz     r12, 0x58(r31)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
branch_0x80325fc8:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x68
    blr


.globl getBaseVelVec__11JPAParticleCFRQ29JGeometry8TVec3_f_
getBaseVelVec__11JPAParticleCFRQ29JGeometry8TVec3_f_: # 0x80325fec
    lfs     f0, 0x5c(r3)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x60(r3)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x64(r3)
    stfs    f0, 0x8(r4)
    blr


.globl __ct__14JPAMagnetFieldFv
__ct__14JPAMagnetFieldFv: # 0x80326008
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3d90
    stw     r0, 0x8c(r31)
    li      r0, 0x2
    addi    r3, r31, 0x0
    stb     r0, 0x50(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14JPAMagnetFieldFv
__dt__14JPAMagnetFieldFv: # 0x8032604c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x803260a8
    lis     r3, 0x803e
    addi    r0, r3, 0x3d90
    stw     r0, 0x8c(r30)
    beq-    branch_0x80326098
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x80326098
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x80326098:
    extsh.  r0, r31
    ble-    branch_0x803260a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x803260a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set__14JPAMagnetFieldFv
set__14JPAMagnetFieldFv: # 0x803260c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lhz     r0, 0x54(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803260f0
    li      r0, 0x1
    b       branch_0x803260f4

branch_0x803260f0:
    li      r0, 0x0
branch_0x803260f4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80326110
    addi    r3, r3, 0x6c
    addi    r4, r31, 0x18
    addi    r5, r31, 0x58
    bl      PSMTXMultVec
    b       branch_0x80326128

branch_0x80326110:
    lfs     f0, 0x18(r31)
    stfs    f0, 0x58(r31)
    lfs     f0, 0x1c(r31)
    stfs    f0, 0x5c(r31)
    lfs     f0, 0x20(r31)
    stfs    f0, 0x60(r31)
branch_0x80326128:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl affect__14JPAMagnetFieldFP11JPAParticle
affect__14JPAMagnetFieldFP11JPAParticle: # 0x8032613c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lhz     r0, 0x54(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80326170
    li      r0, 0x1
    b       branch_0x80326174

branch_0x80326170:
    li      r0, 0x0
branch_0x80326174:
    clrlwi. r0, r0, 24
    bne-    branch_0x803261b0
    lfs     f1, 0x58(r30)
    lfs     f0, 0x20(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(r30)
    lfs     f1, 0x5c(r30)
    lfs     f0, 0x24(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(r30)
    lfs     f1, 0x60(r30)
    lfs     f0, 0x28(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(r30)
    b       branch_0x803261e0

branch_0x803261b0:
    lfs     f1, 0x58(r30)
    lfs     f0, 0x2c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(r30)
    lfs     f1, 0x5c(r30)
    lfs     f0, 0x30(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(r30)
    lfs     f1, 0x60(r30)
    lfs     f0, 0x34(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(r30)
branch_0x803261e0:
    lfs     f1, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x84(r30)
    fmuls   f1, f0, f0
    lfs     f0, 0x868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lfs     f31, 0x10(r30)
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80326228
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x84(r30)
    stfs    f0, 0x80(r30)
    stfs    f0, 0x7c(r30)
    b       branch_0x80326254

branch_0x80326228:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x7c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r30)
    lfs     f0, 0x84(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r30)
branch_0x80326254:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__14JPANewtonFieldFv
__ct__14JPANewtonFieldFv: # 0x8032627c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3d78
    stw     r0, 0x8c(r31)
    li      r0, 0x3
    addi    r3, r31, 0x0
    stb     r0, 0x50(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14JPANewtonFieldFv
__dt__14JPANewtonFieldFv: # 0x803262c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8032631c
    lis     r3, 0x803e
    addi    r0, r3, 0x3d78
    stw     r0, 0x8c(r30)
    beq-    branch_0x8032630c
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x8032630c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x8032630c:
    extsh.  r0, r31
    ble-    branch_0x8032631c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8032631c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set__14JPANewtonFieldFv
set__14JPANewtonFieldFv: # 0x80326338
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lhz     r0, 0x54(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80326364
    li      r0, 0x1
    b       branch_0x80326368

branch_0x80326364:
    li      r0, 0x0
branch_0x80326368:
    clrlwi. r0, r0, 24
    bne-    branch_0x80326384
    addi    r3, r3, 0x6c
    addi    r4, r31, 0x18
    addi    r5, r31, 0x58
    bl      PSMTXMultVec
    b       branch_0x8032639c

branch_0x80326384:
    lfs     f0, 0x18(r31)
    stfs    f0, 0x58(r31)
    lfs     f0, 0x1c(r31)
    stfs    f0, 0x5c(r31)
    lfs     f0, 0x20(r31)
    stfs    f0, 0x60(r31)
branch_0x8032639c:
    lfs     f0, 0x30(r31)
    fmuls   f0, f0, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl affect__14JPANewtonFieldFP11JPAParticle
affect__14JPANewtonFieldFP11JPAParticle: # 0x803263bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    lhz     r0, 0x54(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803263f0
    li      r0, 0x1
    b       branch_0x803263f4

branch_0x803263f0:
    li      r0, 0x0
branch_0x803263f4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80326430
    lfs     f1, 0x58(r30)
    lfs     f0, 0x20(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(r30)
    lfs     f1, 0x5c(r30)
    lfs     f0, 0x24(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(r30)
    lfs     f1, 0x60(r30)
    lfs     f0, 0x28(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(r30)
    b       branch_0x80326460

branch_0x80326430:
    lfs     f1, 0x58(r30)
    lfs     f0, 0x2c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(r30)
    lfs     f1, 0x5c(r30)
    lfs     f0, 0x30(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(r30)
    lfs     f1, 0x60(r30)
    lfs     f0, 0x34(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(r30)
branch_0x80326460:
    lhz     r0, 0x54(r30)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80326474
    li      r0, 0x1
    b       branch_0x80326478

branch_0x80326474:
    li      r0, 0x0
branch_0x80326478:
    clrlwi. r0, r0, 24
    beq-    branch_0x803264f8
    lfs     f1, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x84(r30)
    fmuls   f1, f0, f0
    lfs     f0, 0x868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lfs     f31, 0x10(r30)
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x803264c8
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x84(r30)
    stfs    f0, 0x80(r30)
    stfs    f0, 0x7c(r30)
    b       branch_0x80326590

branch_0x803264c8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x7c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r30)
    lfs     f0, 0x84(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r30)
    b       branch_0x80326590

branch_0x803264f8:
    lfs     f1, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f1, f1, f1
    lfs     f2, 0x84(r30)
    fmuls   f0, f0, f0
    lfs     f3, 0x34(r30)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f3
    ble-    branch_0x80326534
    lfs     f0, 0x874(rtoc)
    fmuls   f0, f0, f3
    fdivs   f3, f0, f1
    b       branch_0x80326538

branch_0x80326534:
    lfs     f3, 0x874(rtoc)
branch_0x80326538:
    lfs     f0, 0x868(rtoc)
    lfs     f2, 0x10(r30)
    fcmpo   cr0, f1, f0
    fmuls   f31, f2, f3
    cror    2, 0, 2
    bne-    branch_0x80326564
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x84(r30)
    stfs    f0, 0x80(r30)
    stfs    f0, 0x7c(r30)
    b       branch_0x80326590

branch_0x80326564:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x7c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r30)
    lfs     f0, 0x84(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r30)
branch_0x80326590:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__14JPAVortexFieldFv
__ct__14JPAVortexFieldFv: # 0x803265b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3d60
    stw     r0, 0x8c(r31)
    li      r0, 0x4
    addi    r3, r31, 0x0
    lfs     f1, 0x858(rtoc)
    stfs    f1, 0x24(r31)
    lfs     f0, 0x860(rtoc)
    stfs    f0, 0x28(r31)
    stfs    f1, 0x2c(r31)
    stb     r0, 0x50(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14JPAVortexFieldFv
__dt__14JPAVortexFieldFv: # 0x80326610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8032666c
    lis     r3, 0x803e
    addi    r0, r3, 0x3d60
    stw     r0, 0x8c(r30)
    beq-    branch_0x8032665c
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x8032665c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x8032665c:
    extsh.  r0, r31
    ble-    branch_0x8032666c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8032666c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set__14JPAVortexFieldFv
set__14JPAVortexFieldFv: # 0x80326688
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    addi    r3, r3, 0xcc
    addi    r4, r31, 0x24
    addi    r5, r31, 0x58
    bl      PSMTXMultVec
    lfs     f0, 0x20(r31)
    fmuls   f0, f0, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x860(rtoc)
    lfs     f0, 0x30(r31)
    fdivs   f0, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl affect__14JPAVortexFieldFP11JPAParticle
affect__14JPAVortexFieldFP11JPAParticle: # 0x803266e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stfd    f29, 0x70(sp)
    stfd    f28, 0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    lfs     f1, 0x5c(r3)
    lfs     f4, 0x24(r4)
    lfs     f3, 0x20(r4)
    fmuls   f0, f1, f4
    lfs     f2, 0x58(r30)
    lfs     f5, 0x28(r4)
    lfs     f6, 0x60(r30)
    fmadds  f0, f2, f3, f0
    lfs     f7, 0x30(r30)
    fmadds  f0, f6, f5, f0
    fmuls   f1, f1, f0
    fmuls   f2, f2, f0
    fmuls   f0, f6, f0
    fsubs   f30, f4, f1
    fsubs   f31, f3, f2
    fsubs   f29, f5, f0
    fmuls   f0, f30, f30
    fmadds  f0, f31, f31, f0
    fmadds  f1, f29, f29, f0
    fcmpo   cr0, f1, f7
    fmr     f3, f1
    ble-    branch_0x80326768
    fmr     f3, f7
branch_0x80326768:
    lfs     f2, 0x34(r30)
    lfs     f0, 0x868(rtoc)
    fmuls   f5, f3, f2
    lfs     f4, 0x860(rtoc)
    lfs     f2, 0x14(r30)
    fcmpo   cr0, f1, f0
    lfs     f3, 0x10(r30)
    fsubs   f4, f4, f5
    fmuls   f0, f5, f2
    cror    2, 0, 2
    fmadds  f28, f4, f3, f0
    bne-    branch_0x803267a8
    lfs     f3, 0x858(rtoc)
    fmr     f2, f3
    fmr     f4, f2
    b       branch_0x803267c0

branch_0x803267a8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x860(rtoc)
    fmuls   f0, f0, f1
    fmuls   f4, f31, f0
    fmuls   f2, f30, f0
    fmuls   f3, f29, f0
branch_0x803267c0:
    lfs     f6, 0x5c(r30)
    mr      r3, r30
    lfs     f7, 0x60(r30)
    mr      r4, r31
    fmuls   f0, f3, f6
    lfs     f5, 0x58(r30)
    fmuls   f1, f4, f7
    fmsubs  f0, f2, f7, f0
    fmuls   f2, f2, f5
    fmsubs  f1, f3, f5, f1
    stfs    f0, 0x7c(r30)
    fmsubs  f0, f4, f6, f2
    stfs    f1, 0x80(r30)
    stfs    f0, 0x84(r30)
    lfs     f0, 0x7c(r30)
    fmuls   f0, f0, f28
    stfs    f0, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f0, f0, f28
    stfs    f0, 0x80(r30)
    lfs     f0, 0x84(r30)
    fmuls   f0, f0, f28
    stfs    f0, 0x84(r30)
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lfd     f29, 0x70(sp)
    lfd     f28, 0x68(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x88
    blr


.globl checkMaxDistance__14JPAVortexFieldFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
checkMaxDistance__14JPAVortexFieldFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x80326848
    li      r3, 0x0
    blr


.globl __ct__18JPAConvectionFieldFv
__ct__18JPAConvectionFieldFv: # 0x80326850
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3d48
    stw     r0, 0x8c(r31)
    li      r0, 0x7
    addi    r3, r31, 0x0
    stb     r0, 0x50(r31)
    lfs     f1, 0x858(rtoc)
    stfs    f1, 0x24(r31)
    lfs     f0, 0x860(rtoc)
    stfs    f0, 0x28(r31)
    stfs    f1, 0x2c(r31)
    stfs    f0, 0x18(r31)
    stfs    f1, 0x1c(r31)
    stfs    f1, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18JPAConvectionFieldFv
__dt__18JPAConvectionFieldFv: # 0x803268b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80326910
    lis     r3, 0x803e
    addi    r0, r3, 0x3d48
    stw     r0, 0x8c(r30)
    beq-    branch_0x80326900
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x80326900
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x80326900:
    extsh.  r0, r31
    ble-    branch_0x80326910
    mr      r3, r30
    bl      __dl__FPv
branch_0x80326910:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set__18JPAConvectionFieldFv
set__18JPAConvectionFieldFv: # 0x8032692c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f5, 0x28(r30)
    mr      r31, r3
    lfs     f6, 0x20(r30)
    lfs     f3, 0x18(r30)
    lfs     f2, 0x2c(r30)
    fmuls   f0, f6, f5
    lfs     f7, 0x1c(r30)
    lfs     f4, 0x24(r30)
    fmuls   f1, f3, f2
    fmsubs  f0, f7, f2, f0
    fmuls   f2, f7, f4
    fmsubs  f1, f6, f4, f1
    stfs    f0, 0x24(sp)
    fmsubs  f0, f3, f5, f2
    stfs    f1, 0x28(sp)
    stfs    f0, 0x2c(sp)
    lfs     f5, 0x28(r30)
    lfs     f6, 0x2c(sp)
    lfs     f3, 0x24(sp)
    lfs     f2, 0x2c(r30)
    fmuls   f0, f6, f5
    lfs     f7, 0x28(sp)
    lfs     f4, 0x24(r30)
    fmuls   f1, f3, f2
    fmsubs  f0, f7, f2, f0
    fmuls   f2, f7, f4
    fmsubs  f1, f6, f4, f1
    stfs    f0, 0x18(r30)
    fmsubs  f0, f3, f5, f2
    stfs    f1, 0x1c(r30)
    stfs    f0, 0x20(r30)
    lfs     f1, 0x18(r30)
    lfs     f3, 0x20(r30)
    lfs     f0, 0x1c(r30)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, 0x868(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80326a08
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x20(r30)
    stfs    f0, 0x1c(r30)
    stfs    f0, 0x18(r30)
    b       branch_0x80326a38

branch_0x80326a08:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x860(rtoc)
    lfs     f0, 0x18(r30)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x18(r30)
    lfs     f0, 0x1c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x20(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(r30)
branch_0x80326a38:
    addi    r31, r31, 0xcc
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18
    addi    r5, r30, 0x58
    bl      PSMTXMultVec
    addi    r3, r31, 0x0
    addi    r4, r30, 0x24
    addi    r5, r30, 0x64
    bl      PSMTXMultVec
    addi    r3, r31, 0x0
    addi    r4, sp, 0x24
    addi    r5, r30, 0x70
    bl      PSMTXMultVec
    lfs     f1, 0x58(r30)
    lfs     f0, 0x5c(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x60(r30)
    fmuls   f1, f0, f0
    lfs     f0, 0x868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80326ab0
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x60(r30)
    stfs    f0, 0x5c(r30)
    stfs    f0, 0x58(r30)
    b       branch_0x80326ae0

branch_0x80326ab0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x860(rtoc)
    lfs     f0, 0x58(r30)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x58(r30)
    lfs     f0, 0x5c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(r30)
    lfs     f0, 0x60(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(r30)
branch_0x80326ae0:
    lfs     f1, 0x64(r30)
    lfs     f0, 0x68(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x6c(r30)
    fmuls   f1, f0, f0
    lfs     f0, 0x868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80326b24
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x6c(r30)
    stfs    f0, 0x68(r30)
    stfs    f0, 0x64(r30)
    b       branch_0x80326b54

branch_0x80326b24:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x860(rtoc)
    lfs     f0, 0x64(r30)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x64(r30)
    lfs     f0, 0x68(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(r30)
    lfs     f0, 0x6c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x6c(r30)
branch_0x80326b54:
    lfs     f1, 0x70(r30)
    lfs     f0, 0x74(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x78(r30)
    fmuls   f1, f0, f0
    lfs     f0, 0x868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80326b98
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x78(r30)
    stfs    f0, 0x74(r30)
    stfs    f0, 0x70(r30)
    b       branch_0x80326bc8

branch_0x80326b98:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x860(rtoc)
    lfs     f0, 0x70(r30)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x70(r30)
    lfs     f0, 0x74(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(r30)
    lfs     f0, 0x78(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(r30)
branch_0x80326bc8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl affect__18JPAConvectionFieldFP11JPAParticle
affect__18JPAConvectionFieldFP11JPAParticle: # 0x80326be0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stfd    f30, 0x100(sp)
    stfd    f29, 0xf8(sp)
    stfd    f28, 0xf0(sp)
    stw     r31, 0xec(sp)
    mr      r31, r4
    li      r4, 0x0
    stw     r30, 0xe8(sp)
    mr      r30, r3
    mr      r0, r4
    lfs     f1, 0x858(rtoc)
    lfs     f0, 0x64(r3)
    lfs     f2, 0x28(r31)
    fcmpu   cr0, f1, f0
    lfs     f0, 0x20(r31)
    lfs     f1, 0x24(r31)
    bne-    branch_0x80326c44
    lfs     f4, 0x860(rtoc)
    lfs     f3, 0x68(r30)
    fcmpu   cr0, f4, f3
    bne-    branch_0x80326c44
    li      r0, 0x1
branch_0x80326c44:
    clrlwi. r0, r0, 24
    beq-    branch_0x80326c60
    lfs     f4, 0x858(rtoc)
    lfs     f3, 0x6c(r30)
    fcmpu   cr0, f4, f3
    bne-    branch_0x80326c60
    li      r4, 0x1
branch_0x80326c60:
    clrlwi. r0, r4, 24
    beq-    branch_0x80326c78
    fmr     f8, f0
    lfs     f9, 0x858(rtoc)
    fmr     f10, f2
    b       branch_0x80326ccc

branch_0x80326c78:
    lfs     f10, 0x5c(r30)
    lfs     f9, 0x74(r30)
    fmuls   f4, f10, f1
    lfs     f6, 0x58(r30)
    fmuls   f3, f9, f1
    lfs     f5, 0x70(r30)
    lfs     f12, 0x60(r30)
    fmadds  f4, f6, f0, f4
    lfs     f11, 0x78(r30)
    fmadds  f3, f5, f0, f3
    fmadds  f4, f12, f2, f4
    fmadds  f3, f11, f2, f3
    fmuls   f8, f6, f4
    fmuls   f7, f5, f3
    fmuls   f6, f10, f4
    fmuls   f5, f9, f3
    fmuls   f4, f12, f4
    fmuls   f3, f11, f3
    fadds   f8, f8, f7
    fadds   f9, f6, f5
    fadds   f10, f4, f3
branch_0x80326ccc:
    fmuls   f4, f9, f9
    lfs     f3, 0x868(rtoc)
    lfs     f6, 0x30(r30)
    fmadds  f4, f8, f8, f4
    fmadds  f11, f10, f10, f4
    fcmpo   cr0, f11, f3
    cror    2, 0, 2
    bne-    branch_0x80326cfc
    lfs     f4, 0x858(rtoc)
    fmr     f5, f4
    fmr     f6, f5
    b       branch_0x80326d40

branch_0x80326cfc:
    lfs     f3, 0x858(rtoc)
    fcmpo   cr0, f11, f3
    cror    2, 0, 2
    bne-    branch_0x80326d10
    b       branch_0x80326d30

branch_0x80326d10:
    frsqrte f7, f11
    lfs     f5, 0x86c(rtoc)
    lfs     f3, 0x870(rtoc)
    frsp    f7, f7
    fmuls   f4, f7, f7
    fmuls   f5, f5, f7
    fnmsubs  f3, f11, f4, f3
    fmuls   f11, f5, f3
branch_0x80326d30:
    fmuls   f3, f6, f11
    fmuls   f6, f8, f3
    fmuls   f5, f9, f3
    fmuls   f4, f10, f3
branch_0x80326d40:
    lfs     f8, 0x68(r30)
    fsubs   f30, f1, f5
    lfs     f7, 0x6c(r30)
    fsubs   f29, f2, f4
    fmuls   f1, f8, f6
    lfs     f9, 0x64(r30)
    fmuls   f3, f7, f5
    fmuls   f2, f9, f4
    fmsubs  f5, f9, f5, f1
    fmsubs  f3, f8, f4, f3
    fmsubs  f4, f7, f6, f2
    fmuls   f2, f5, f30
    fsubs   f31, f0, f6
    fmuls   f1, f3, f29
    fmsubs  f2, f4, f29, f2
    fmuls   f0, f4, f31
    fmsubs  f1, f5, f31, f1
    stfs    f2, 0x7c(r30)
    fmsubs  f0, f3, f30, f0
    stfs    f1, 0x80(r30)
    stfs    f0, 0x84(r30)
    lfs     f1, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x84(r30)
    fmuls   f1, f0, f0
    lfs     f0, 0x868(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lfs     f28, 0x10(r30)
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80326ddc
    lfs     f0, 0x858(rtoc)
    stfs    f0, 0x84(r30)
    stfs    f0, 0x80(r30)
    stfs    f0, 0x7c(r30)
    b       branch_0x80326e08

branch_0x80326ddc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f28, f1
    lfs     f0, 0x7c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r30)
    lfs     f0, 0x84(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r30)
branch_0x80326e08:
    lfs     f2, 0x858(rtoc)
    lfs     f4, 0x34(r30)
    fcmpu   cr0, f2, f4
    beq-    branch_0x80326ea4
    fmuls   f1, f30, f30
    lfs     f0, 0x868(rtoc)
    fmadds  f1, f31, f31, f1
    fmadds  f5, f29, f29, f1
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x80326e40
    fmr     f1, f2
    fmr     f3, f1
    b       branch_0x80326e80

branch_0x80326e40:
    fcmpo   cr0, f5, f2
    cror    2, 0, 2
    bne-    branch_0x80326e50
    b       branch_0x80326e70

branch_0x80326e50:
    frsqrte f3, f5
    lfs     f2, 0x86c(rtoc)
    lfs     f0, 0x870(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f5, f1, f0
    fmuls   f5, f2, f0
branch_0x80326e70:
    fmuls   f0, f4, f5
    fmuls   f3, f31, f0
    fmuls   f1, f30, f0
    fmuls   f2, f29, f0
branch_0x80326e80:
    lfs     f0, 0x7c(r30)
    fadds   f0, f0, f3
    stfs    f0, 0x7c(r30)
    lfs     f0, 0x80(r30)
    fadds   f0, f0, f1
    stfs    f0, 0x80(r30)
    lfs     f0, 0x84(r30)
    fadds   f0, f0, f2
    stfs    f0, 0x84(r30)
branch_0x80326ea4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    mtlr    r0
    lfd     f29, 0xf8(sp)
    lfd     f28, 0xf0(sp)
    lwz     r31, 0xec(sp)
    lwz     r30, 0xe8(sp)
    addi    sp, sp, 0x110
    blr


.globl checkMaxDistance__18JPAConvectionFieldFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
checkMaxDistance__18JPAConvectionFieldFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x80326ed8
    li      r3, 0x0
    blr


.globl __ct__14JPARandomFieldFv
__ct__14JPARandomFieldFv: # 0x80326ee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3d30
    stw     r0, 0x8c(r31)
    li      r0, 0x5
    addi    r3, r31, 0x0
    stb     r0, 0x50(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14JPARandomFieldFv
__dt__14JPARandomFieldFv: # 0x80326f24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80326f80
    lis     r3, 0x803e
    addi    r0, r3, 0x3d30
    stw     r0, 0x8c(r30)
    beq-    branch_0x80326f70
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x80326f70
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x80326f70:
    extsh.  r0, r31
    ble-    branch_0x80326f80
    mr      r3, r30
    bl      __dl__FPv
branch_0x80326f80:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl affect__14JPARandomFieldFP11JPAParticle
affect__14JPARandomFieldFP11JPAParticle: # 0x80326f9c
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    lfs     f0, 0x44(r4)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80326fcc
    li      r7, 0x1
    b       branch_0x80326ff4

branch_0x80326fcc:
    lbz     r6, 0x53(r3)
    cmplwi  r6, 0x0
    beq-    branch_0x80326ff4
    stfd    f0, 0x68(sp)
    lwz     r5, 0x6c(sp)
    divw    r0, r5, r6
    mullw   r0, r0, r6
    subf.   r0, r0, r5
    bne-    branch_0x80326ff4
    li      r7, 0x1
branch_0x80326ff4:
    clrlwi. r0, r7, 24
    beq-    branch_0x803270cc
    lis     r5, 0x19
    lwz     r0, -0x5ae0(r13)
    addi    r6, r5, 0x660d
    lfs     f3, 0x860(rtoc)
    mullw   r5, r0, r6
    lfs     f2, 0x86c(rtoc)
    addis   r5, r5, 0x3c6f
    subi    r0, r5, 0xca1
    stw     r0, -0x5ae0(r13)
    lwz     r7, -0x5ae0(r13)
    mullw   r5, r7, r6
    addis   r5, r5, 0x3c6f
    subi    r0, r5, 0xca1
    stw     r0, -0x5ae0(r13)
    srwi    r0, r7, 9
    oris    r0, r0, 0x3f80
    lwz     r7, -0x5ae0(r13)
    stw     r0, 0x54(sp)
    mullw   r5, r7, r6
    lfs     f0, 0x54(sp)
    fsubs   f0, f0, f3
    addis   r5, r5, 0x3c6f
    subi    r0, r5, 0xca1
    fsubs   f4, f0, f2
    stw     r0, -0x5ae0(r13)
    srwi    r0, r7, 9
    oris    r5, r0, 0x3f80
    lwz     r0, -0x5ae0(r13)
    stw     r5, 0x50(sp)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    lfs     f0, 0x50(sp)
    stw     r0, 0x4c(sp)
    fsubs   f1, f0, f3
    lfs     f0, 0x4c(sp)
    fsubs   f0, f0, f3
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    stfs    f0, 0x7c(r3)
    stfs    f1, 0x80(r3)
    stfs    f4, 0x84(r3)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x7c(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(r3)
    lfs     f0, 0x80(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(r3)
    lfs     f0, 0x84(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r3)
    bl      calcFieldVelocity__12JPABaseFieldFP11JPAParticle
branch_0x803270cc:
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__12JPADragFieldFv
__ct__12JPADragFieldFv: # 0x803270dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12JPABaseFieldFv
    lis     r3, 0x803e
    addi    r0, r3, 0x3d18
    stw     r0, 0x8c(r31)
    li      r0, 0x6
    addi    r3, r31, 0x0
    stb     r0, 0x50(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12JPADragFieldFv
__dt__12JPADragFieldFv: # 0x80327120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8032717c
    lis     r3, 0x803e
    addi    r0, r3, 0x3d18
    stw     r0, 0x8c(r30)
    beq-    branch_0x8032716c
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x8032716c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x8032716c:
    extsh.  r0, r31
    ble-    branch_0x8032717c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8032717c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl affect__12JPADragFieldFP11JPAParticle
affect__12JPADragFieldFP11JPAParticle: # 0x80327198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    lwz     r0, 0x10(r4)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x803271c4
    li      r0, 0x1
    b       branch_0x803271c8

branch_0x803271c4:
    li      r0, 0x0
branch_0x803271c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80327280
    lfs     f0, 0x44(r31)
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x80327244
    lis     r4, 0x19
    lwz     r5, -0x5ae0(r13)
    addi    r0, r4, 0x660d
    lfs     f3, 0x860(rtoc)
    mullw   r4, r5, r0
    lfs     f1, 0x86c(rtoc)
    addis   r4, r4, 0x3c6f
    subi    r0, r4, 0xca1
    stw     r0, -0x5ae0(r13)
    lwz     r0, -0x5ae0(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x28(sp)
    lfs     f0, 0x28(sp)
    lfs     f4, 0x14(r3)
    fsubs   f2, f0, f3
    lfs     f0, 0x10(r3)
    fsubs   f1, f2, f1
    fmadds  f0, f4, f1, f0
    fcmpo   cr0, f0, f3
    ble-    branch_0x80327240
    fmr     f0, f3
branch_0x80327240:
    stfs    f0, 0x80(r31)
branch_0x80327244:
    lfs     f1, 0x48(r31)
    bl      calcFieldFadeScale__12JPABaseFieldFf
    mr      r3, r31
    fmr     f31, f1
    lwz     r12, 0x58(r31)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x860(rtoc)
    lfs     f0, 0x84(r31)
    fsubs   f1, f2, f1
    fnmsubs  f1, f31, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r31)
    b       branch_0x803272a0

branch_0x80327280:
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x84(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(r31)
branch_0x803272a0:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl getDragForce__11JPAParticleCFv
getDragForce__11JPAParticleCFv: # 0x803272b8
    lfs     f1, 0x80(r3)
    blr


.globl __ct__15JPAFieldManagerFv
__ct__15JPAFieldManagerFv: # 0x803272c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initiate__10JSUPtrListFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl deleteAllField__15JPAFieldManagerFv
deleteAllField__15JPAFieldManagerFv: # 0x803272f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8032734c
    lwz     r4, 0x0(r29)
    b       branch_0x80327344

branch_0x80327320:
    lwz     r30, 0x0(r4)
    mr      r3, r29
    lwz     r31, 0xc(r4)
    mr      r4, r30
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r3, 0xc(r29)
    mr      r4, r30
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    mr      r4, r31
branch_0x80327344:
    cmplwi  r4, 0x0
    bne+    branch_0x80327320
branch_0x8032734c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl calcFieldParams__15JPAFieldManagerFv
calcFieldParams__15JPAFieldManagerFv: # 0x80327368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803273dc
    lwz     r4, 0x0(r3)
    b       branch_0x803273d4

branch_0x8032738c:
    lwz     r3, 0x0(r4)
    lwz     r31, 0xc(r4)
    lhz     r0, 0x54(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x803273a8
    li      r0, 0x1
    b       branch_0x803273ac

branch_0x803273a8:
    li      r0, 0x0
branch_0x803273ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x803273c0
    lfs     f0, 0x3c(r3)
    fmuls   f0, f0, f0
    stfs    f0, 0x88(r3)
branch_0x803273c0:
    lwz     r12, 0x8c(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r4, r31
branch_0x803273d4:
    cmplwi  r4, 0x0
    bne+    branch_0x8032738c
branch_0x803273dc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl affectField__15JPAFieldManagerFP11JPAParticle
affectField__15JPAFieldManagerFP11JPAParticle: # 0x803273f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    mr      r28, r4
    addi    r31, r28, 0x2c
    lwz     r30, 0x0(r3)
    b       branch_0x803274a0

branch_0x8032741c:
    lwz     r4, 0x0(r30)
    lhz     r0, 0x54(r4)
    addi    r29, r4, 0x0
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80327438
    li      r0, 0x1
    b       branch_0x8032743c

branch_0x80327438:
    li      r0, 0x0
branch_0x8032743c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80327460
    mr      r3, r29
    lwz     r12, 0x8c(r29)
    mr      r4, r28
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x8032749c

branch_0x80327460:
    lwz     r12, 0x8c(r29)
    addi    r5, r4, 0x18
    mr      r3, r29
    lwz     r12, 0x14(r12)
    addi    r4, r31, 0x0
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x8032749c
    mr      r3, r29
    lwz     r12, 0x8c(r29)
    mr      r4, r28
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8032749c:
    lwz     r30, 0xc(r30)
branch_0x803274a0:
    cmplwi  r30, 0x0
    bne+    branch_0x8032741c
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl setField__15JPAFieldManagerFUc
setField__15JPAFieldManagerFUc: # 0x803274c8
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x7
    stwu    sp, -0x8(sp)
    bgt-    branch_0x80327558
    lis     r4, 0x803e
    addi    r4, r4, 0x3cf8
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
    bl      setGravityField__15JPAFieldManagerFv
    mr      r5, r3
    b       branch_0x80327558


.incbin "./baserom/code/Text_0x80005600.bin", 0x321f08, 0x80327558 - 0x80327508
branch_0x80327558:
    lwz     r0, 0xc(sp)
    mr      r3, r5
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setGravityField__15JPAFieldManagerFv
setGravityField__15JPAFieldManagerFv: # 0x8032756c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803275c4
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x803275b8
    bl      __ct__15JPAGravityFieldFv
branch_0x803275b8:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x803275c4:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl setAirField__15JPAFieldManagerFv
setAirField__15JPAFieldManagerFv: # 0x803275e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80327638
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x8032762c
    bl      __ct__11JPAAirFieldFv
branch_0x8032762c:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x80327638:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl setMagnetField__15JPAFieldManagerFv
setMagnetField__15JPAFieldManagerFv: # 0x80327654
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803276ac
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x803276a0
    bl      __ct__14JPAMagnetFieldFv
branch_0x803276a0:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x803276ac:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl setNewtonField__15JPAFieldManagerFv
setNewtonField__15JPAFieldManagerFv: # 0x803276c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80327720
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x80327714
    bl      __ct__14JPANewtonFieldFv
branch_0x80327714:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x80327720:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl setVortexField__15JPAFieldManagerFv
setVortexField__15JPAFieldManagerFv: # 0x8032773c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80327794
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x80327788
    bl      __ct__14JPAVortexFieldFv
branch_0x80327788:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x80327794:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl setConvectionField__15JPAFieldManagerFv
setConvectionField__15JPAFieldManagerFv: # 0x803277b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80327808
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x803277fc
    bl      __ct__18JPAConvectionFieldFv
branch_0x803277fc:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x80327808:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl setRandomField__15JPAFieldManagerFv
setRandomField__15JPAFieldManagerFv: # 0x80327824
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8032787c
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x80327870
    bl      __ct__14JPARandomFieldFv
branch_0x80327870:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x8032787c:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl setDragField__15JPAFieldManagerFv
setDragField__15JPAFieldManagerFv: # 0x80327898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    lwz     r3, 0xc(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803278f0
    lwz     r4, 0x0(r3)
    lwz     r31, 0x0(r4)
    mr      r4, r31
    bl      remove__10JSUPtrListFP10JSUPtrLink
    cmplwi  r31, 0x0
    addi    r3, r31, 0x0
    beq-    branch_0x803278e4
    bl      __ct__12JPADragFieldFv
branch_0x803278e4:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x803278f0:
    lwz     r0, 0x54(sp)
    mr      r3, r31
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__11JPAAirFieldFv
__dt__11JPAAirFieldFv: # 0x8032790c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80327968
    lis     r3, 0x803e
    addi    r0, r3, 0x3da8
    stw     r0, 0x8c(r30)
    beq-    branch_0x80327958
    lis     r3, 0x803e
    addi    r0, r3, 0x3dd8
    stw     r0, 0x8c(r30)
    beq-    branch_0x80327958
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x80327958:
    extsh.  r0, r31
    ble-    branch_0x80327968
    mr      r3, r30
    bl      __dl__FPv
branch_0x80327968:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_JPAField_cpp
__sinit_JPAField_cpp: # 0x80327984
    mflr    r0
    subi    r3, r13, 0x5ae0
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    bl      __ct__Q25JMath13TRandom_fast_FUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

