
.globl __dt__17TOneShotGeneratorFv
__dt__17TOneShotGeneratorFv: # 0x8008f460
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008f4c8
    lis     r3, 0x803b
    addi    r3, r3, 0x42a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008f4b8
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8008f4b8:
    extsh.  r0, r31
    ble-    branch_0x8008f4c8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008f4c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl receiveMessage__17TOneShotGeneratorFP9THitActorUl
receiveMessage__17TOneShotGeneratorFP9THitActorUl: # 0x8008f4e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8008f514
    li      r0, 0x1
    b       branch_0x8008f518

branch_0x8008f514:
    li      r0, 0x0
branch_0x8008f518:
    clrlwi. r0, r0, 24
    beq-    branch_0x8008f5c0
    lwz     r0, 0x78(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x8008f5b8
    lwz     r3, 0x6c(r30)
    bl      getFarOutEnemy__13TEnemyManagerFv
    mr.     r31, r3
    beq-    branch_0x8008f5b0
    lwz     r0, 0x74(r30)
    addi    r3, sp, 0x1c
    lwz     r4, 0x124(r31)
    stw     r0, 0x0(r4)
    lfs     f1, -0x6760(rtoc)
    lfs     f0, -0x675c(rtoc)
    stfs    f1, 0x58(sp)
    stfs    f1, 0x4c(sp)
    stfs    f1, 0x5c(sp)
    stfs    f0, 0x50(sp)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x54(sp)
    lfs     f1, 0x30(r30)
    lfs     f2, 0x34(r30)
    lfs     f3, 0x38(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x4c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x1c
    bl      PSMTXMultVec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x10
    addi    r5, sp, 0x58
    lwz     r12, 0x104(r12)
    addi    r6, r31, 0x24
    addi    r7, sp, 0x4c
    mtlr    r12
    blrl
branch_0x8008f5b0:
    li      r0, 0x0
    stw     r0, 0x78(r30)
branch_0x8008f5b8:
    li      r3, 0x1
    b       branch_0x8008f5c4

branch_0x8008f5c0:
    li      r3, 0x0
branch_0x8008f5c4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl loadAfter__17TOneShotGeneratorFv
loadAfter__17TOneShotGeneratorFv: # 0x8008f5dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    stw     r3, 0x8(sp)
    lwz     r29, 0x8(sp)
    lwz     r0, 0x44(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8008f6f4
    lwz     r3, -0x70b0(r13)
    lwz     r4, 0x68(r29)
    bl      getManagerByName__10TConductorFPCc
    stw     r3, 0x6c(r29)
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8008f634
    lwz     r3, -0x70b0(r13)
    lwz     r4, 0x70(r29)
    bl      getGraphByName__10TConductorFPCc
    stw     r3, 0x74(r29)
branch_0x8008f634:
    lfs     f1, -0x6758(rtoc)
    lis     r3, 0x200
    lfs     f2, -0x6754(rtoc)
    addi    r4, r3, 0x1
    fmr     f3, f1
    fmr     f4, f2
    lwz     r3, 0x8(sp)
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r30, 0x8(sp)
    lis     r3, 0x8038
    subi    r31, r3, 0x4678
    lwz     r0, 0x64(r30)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x38
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x44
    addi    r4, r31, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x40
    addi    r6, sp, 0x8
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, -0x70b0(r13)
    mr      r4, r30
    bl      registerOtherObj__10TConductorFPQ26JDrama8TViewObj
branch_0x8008f6f4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl load__17TOneShotGeneratorFR20JSUMemoryInputStream
load__17TOneShotGeneratorFR20JSUMemoryInputStream: # 0x8008f710
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x70(r30)
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x68(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TOneShotGeneratorFPCc
__ct__17TOneShotGeneratorFPCc: # 0x8008f760
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x42a0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    stw     r4, 0x74(r31)
    stw     r0, 0x78(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TGeneratorFUlPQ26JDrama9TGraphics
perform__10TGeneratorFUlPQ26JDrama9TGraphics: # 0x8008f7c0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8008f8c8
    lwz     r3, 0x3c(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x3c(r30)
    lwz     r0, 0x3c(r30)
    cmpwi   r0, 0x0
    bge-    branch_0x8008f800
    lwz     r0, 0x38(r30)
    stw     r0, 0x3c(r30)
branch_0x8008f800:
    lwz     r0, 0x3c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8008f8c8
    lwz     r0, 0x2c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8008f828
    lwz     r3, -0x70b0(r13)
    lwz     r4, 0x28(r30)
    bl      getManagerByName__10TConductorFPCc
    stw     r3, 0x2c(r30)
branch_0x8008f828:
    lwz     r3, 0x2c(r30)
    bl      getFarOutEnemy__13TEnemyManagerFv
    mr.     r31, r3
    beq-    branch_0x8008f8c8
    lwz     r0, 0x34(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8008f854
    lwz     r3, -0x70b0(r13)
    lwz     r4, 0x30(r30)
    bl      getGraphByName__10TConductorFPCc
    stw     r3, 0x34(r30)
branch_0x8008f854:
    lwz     r0, 0x34(r30)
    addi    r3, sp, 0x1c
    lwz     r4, 0x124(r31)
    stw     r0, 0x0(r4)
    lfs     f1, -0x6760(rtoc)
    lfs     f0, -0x675c(rtoc)
    stfs    f1, 0x58(sp)
    stfs    f1, 0x4c(sp)
    stfs    f1, 0x5c(sp)
    stfs    f0, 0x50(sp)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x54(sp)
    lfs     f1, 0x1c(r30)
    lfs     f2, 0x20(r30)
    lfs     f3, 0x24(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x4c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x1c
    bl      PSMTXMultVec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x10
    addi    r5, sp, 0x58
    lwz     r12, 0x104(r12)
    addi    r6, r31, 0x24
    addi    r7, sp, 0x4c
    mtlr    r12
    blrl
branch_0x8008f8c8:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl load__10TGeneratorFR20JSUMemoryInputStream
load__10TGeneratorFR20JSUMemoryInputStream: # 0x8008f8e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x80(sp)
    addi    r28, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r29, 0x0
    addi    r4, r28, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x14
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
    addi    r4, sp, 0x5c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x60
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    mr      r3, r29
    bl      readString__14JSUInputStreamFv
    addi    r3, r29, 0x0
    addi    r4, sp, 0x54
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x54(sp)
    li      r30, 0x0
    b       branch_0x8008f9d8

branch_0x8008f9bc:
    addi    r3, r29, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    mr      r3, r29
    bl      readString__14JSUInputStreamFv
    addi    r30, r30, 0x1
branch_0x8008f9d8:
    cmpw    r30, r31
    blt+    branch_0x8008f9bc
    mr      r3, r29
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x30(r28)
    mr      r3, r29
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x28(r28)
    addi    r3, r29, 0x0
    addi    r4, r28, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x38(r28)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6748(rtoc)
    stw     r0, 0x7c(sp)
    lis     r3, 0x4330
    xoris   r0, r31, 0x8000
    lfs     f1, -0x6750(rtoc)
    stw     r3, 0x78(sp)
    mr      r4, r28
    stw     r0, 0x74(sp)
    lfd     f0, 0x78(sp)
    stw     r3, 0x70(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x70(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x3c(r28)
    lwz     r3, -0x70b0(r13)
    bl      registerGenerator__10TConductorFP10TGenerator
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl __ct__10TGeneratorFPCc
__ct__10TGeneratorFPCc: # 0x8008fa88
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
    li      r4, 0x0
    lis     r3, 0x803b
    sth     r4, 0xc(r31)
    addi    r3, r3, 0x4344
    li      r0, 0x1
    stw     r3, 0x0(r31)
    mr      r3, r31
    stw     r4, 0x28(r31)
    stw     r4, 0x2c(r31)
    stw     r4, 0x30(r31)
    stw     r4, 0x34(r31)
    stw     r0, 0x38(r31)
    stw     r4, 0x3c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__10TGeneratorFv
__dt__10TGeneratorFv: # 0x8008fb0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008fb64
    lis     r3, 0x803b
    addi    r0, r3, 0x4344
    stw     r0, 0x0(r30)
    beq-    branch_0x8008fb54
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8008fb54:
    extsh.  r0, r31
    ble-    branch_0x8008fb64
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008fb64:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__17TOneShotGeneratorFv
_32___dt__17TOneShotGeneratorFv: # 0x8008fb80
    subi    r3, r3, 0x20
    b       __dt__17TOneShotGeneratorFv

