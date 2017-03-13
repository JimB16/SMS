
.globl __dt__17TPollutionManagerFv
__dt__17TPollutionManagerFv: # 0x8019d47c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8019d4fc
    lis     r3, 0x803c
    addi    r0, r3, 0x1e4c
    stw     r0, 0x0(r30)
    beq-    branch_0x8019d4ec
    lis     r3, 0x803c
    addi    r3, r3, 0x1608
    addic.  r0, r30, 0x20
    stw     r3, 0x0(r30)
    beq-    branch_0x8019d4cc
    addi    r3, r30, 0x3c
    li      r4, -0x1
    bl      __dt__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__Fv
branch_0x8019d4cc:
    cmplwi  r30, 0x0
    beq-    branch_0x8019d4ec
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8019d4ec:
    extsh.  r0, r31
    ble-    branch_0x8019d4fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x8019d4fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TPollutionManagerFPCc
__ct__17TPollutionManagerFPCc: # 0x8019d518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__18TJointModelManagerFPCc
    lwz     r30, 0x8(sp)
    lis     r3, 0x803c
    addi    r0, r3, 0x1e4c
    stw     r0, 0x0(r30)
    li      r31, 0x0
    addi    r3, r30, 0x70
    stw     r31, 0x6c(r30)
    bl      __ct__22TPollutionCounterLayerFv
    addi    r3, r30, 0x1ec
    bl      __ct__20TPollutionCounterObjFv
    stw     r31, 0x204(r30)
    mr      r3, r30
    stw     r31, 0x208(r30)
    sth     r31, 0x20c(r30)
    stw     r30, gpPollution(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__17TPollutionManagerFR20JSUMemoryInputStream
load__17TPollutionManagerFR20JSUMemoryInputStream: # 0x8019d58c
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    subi    r30, r5, 0x6090
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r30, 0x200
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r4, r3
    beq-    branch_0x8019d620
    lhz     r0, 0x0(r4)
    mr      r3, r31
    stw     r0, 0x10(r31)
    bl      setDataAddress__17TPollutionManagerFPQ217TPollutionManager14TPollutionInfo
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x9
    bne-    branch_0x8019d60c
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x7
    beq-    branch_0x8019d60c
    lis     r3, 0x803c
    addi    r5, r3, 0x1dd0
    addi    r3, r31, 0x0
    addi    r4, r30, 0x214
    bl      initJointModel__18TJointModelManagerFPCcPPCc
    b       branch_0x8019d620

branch_0x8019d60c:
    lis     r3, 0x803c
    addi    r5, r3, 0x1df8
    addi    r3, r31, 0x0
    addi    r4, r30, 0x214
    bl      initJointModel__18TJointModelManagerFPCcPPCc
branch_0x8019d620:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8019d6d0
    addi    r3, r30, 0x228
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x204(r31)
    addi    r3, r30, 0x240
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x208(r31)
    addi    r29, r31, 0x70
    addi    r3, r29, 0x0
    lwz     r4, 0x10(r31)
    li      r5, 0xf
    li      r6, 0x5
    bl      init__22TPollutionCounterLayerFiUsUs
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x8019d688

branch_0x8019d668:
    lwz     r4, 0x14(r31)
    mr      r3, r29
    lwzx    r5, r4, r30
    addi    r4, r5, 0x0
    addi    r5, r5, 0x34
    bl      registerLayer__22TPollutionCounterLayerFPC15TPollutionLayerPUl
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x8019d688:
    lwz     r0, 0x10(r31)
    cmpw    r28, r0
    blt+    branch_0x8019d668
    lwz     r3, gpPollution(r13)
    li      r4, 0x1e
    addi    r3, r3, 0x1ec
    bl      init__20TPollutionCounterObjFi
    addi    r29, r31, 0x70
    lwz     r6, 0x208(r31)
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0xff
    bl      registerTexStamp__22TPollutionCounterLayerFUsUsP7ResTIMG
    lwz     r6, 0x204(r31)
    addi    r3, r29, 0x0
    li      r4, 0x1
    li      r5, 0xff
    bl      registerTexStamp__22TPollutionCounterLayerFUsUsP7ResTIMG
branch_0x8019d6d0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl setDataAddress__17TPollutionManagerFPQ217TPollutionManager14TPollutionInfo
setDataAddress__17TPollutionManagerFPQ217TPollutionManager14TPollutionInfo: # 0x8019d6f0
    lwz     r0, 0x4(r4)
    li      r8, 0x0
    li      r5, 0x0
    add     r0, r0, r4
    stw     r0, 0x4(r4)
    lwz     r0, 0x4(r4)
    stw     r0, 0x6c(r3)
    b       branch_0x8019d72c

branch_0x8019d710:
    lwz     r7, 0x6c(r3)
    addi    r6, r5, 0x28
    addi    r8, r8, 0x1
    lwzx    r0, r7, r6
    addi    r5, r5, 0x2c
    add     r0, r0, r4
    stwx    r0, r7, r6
branch_0x8019d72c:
    lwz     r0, 0x10(r3)
    cmpw    r8, r0
    blt+    branch_0x8019d710
    blr


.globl newJointModel__17TPollutionManagerCFi
newJointModel__17TPollutionManagerCFi: # 0x8019d73c
    mflr    r0
    mulli   r4, r4, 0x2c
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    addi    r0, r4, 0x4
    stw     r31, 0x1c(sp)
    lwz     r3, 0x6c(r3)
    lhzx    r0, r3, r0
    cmplwi  r0, 0x6
    bgt-    branch_0x8019d8b0
    lis     r3, 0x803c
    addi    r3, r3, 0x1e74
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8019D77C:		# jumptable 8019D778 case 0
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8019d794
    mr      r3, r31
    bl      __ct__15TPollutionLayerFv
branch_0x8019d794:
    mr      r3, r31
    b       branch_0x8019d8b4

branch_0x8019D79C:		# jumptable 8019D778 case 1
li	  r3, 0xAC
bl	  __nw__FUl	# __nw(ulong)
mr.	  r31, r3
beq	  branch_0x8019D7B4
mr	  r3, r31
bl	  __ct__15TPollutionLayerFv # TPollutionLayer::TPollutionLayer((void))

branch_0x8019D7B4:
mr	  r3, r31
b	  branch_0x8019d8b4

branch_0x8019D7BC:		# jumptable 8019D778 case 4
li	  r3, 0xB4
bl	  __nw__FUl	# __nw(ulong)
mr.	  r31, r3
beq	  branch_0x8019D7E0
mr	  r3, r31
bl	  __ct__23TPollutionLayerWallBaseFv # TPollutionLayerWallBase::TPollutionLayerWallBase((void))
lis	  r3, unk_803C2274@h
addi	  r0, r3, unk_803C2274@l
stw	  r0, 0(r31)

branch_0x8019D7E0:
mr	  r3, r31
b	  branch_0x8019d8b4

branch_0x8019D7E8:		# jumptable 8019D778 case 5
li	  r3, 0xB4
bl	  __nw__FUl	# __nw(ulong)
mr.	  r31, r3
beq	  branch_0x8019D818
mr	  r3, r31
bl	  __ct__23TPollutionLayerWallBaseFv # TPollutionLayerWallBase::TPollutionLayerWallBase((void))
lis	  r3, unk_803C2274@h
addi	  r0, r3, unk_803C2274@l
lis	  r3, unk_803C1EEC@h
stw	  r0, 0(r31)
addi	  r0, r3, unk_803C1EEC@l
stw	  r0, 0(r31)

branch_0x8019D818:
mr	  r3, r31
b	  branch_0x8019d8b4

branch_0x8019D820:		# jumptable 8019D778 case 2
li	  r3, 0xB4
bl	  __nw__FUl	# __nw(ulong)
mr.	  r31, r3
beq	  branch_0x8019D844
mr	  r3, r31
bl	  __ct__23TPollutionLayerWallBaseFv # TPollutionLayerWallBase::TPollutionLayerWallBase((void))
lis	  r3, unk_803C2218@h
addi	  r0, r3, unk_803C2218@l
stw	  r0, 0(r31)

branch_0x8019D844:
mr	  r3, r31
b	  branch_0x8019d8b4

branch_0x8019D84C:		# jumptable 8019D778 case 3
li	  r3, 0xB4
bl	  __nw__FUl	# __nw(ulong)
mr.	  r31, r3
beq	  branch_0x8019D87C
mr	  r3, r31
bl	  __ct__23TPollutionLayerWallBaseFv # TPollutionLayerWallBase::TPollutionLayerWallBase((void))
lis	  r3, unk_803C2218@h
addi	  r0, r3, unk_803C2218@l
lis	  r3, unk_803C1E90@h
stw	  r0, 0(r31)
addi	  r0, r3, unk_803C1E90@l
stw	  r0, 0(r31)

branch_0x8019D87C:
mr	  r3, r31
b	  branch_0x8019d8b4

branch_0x8019D884:		# jumptable 8019D778 case 6
li	  r3, 0xAC
bl	  __nw__FUl	# __nw(ulong)
mr.	  r31, r3
beq	  branch_0x8019D8A8
mr	  r3, r31
bl	  __ct__15TPollutionLayerFv # TPollutionLayer::TPollutionLayer((void))
lis	  r3, unk_803C22D0@h
addi	  r0, r3, unk_803C22D0@l
stw	  r0, 0(r31)

branch_0x8019D8A8:
mr	  r3, r31
b	  branch_0x8019d8b4

def_8019D778:		# jumptable 8019D778 default case
branch_0x8019d8b0:
    li      r3, 0x0
branch_0x8019d8b4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl perform__17TPollutionManagerFUlPQ26JDrama9TGraphics
perform__17TPollutionManagerFUlPQ26JDrama9TGraphics: # 0x8019d8c8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 7, 7
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x8019d8f8
    addi    r3, r29, 0x1ec
    bl      countObjDegree__20TPollutionCounterObjCFv
    b       branch_0x8019d944

branch_0x8019d8f8:
    rlwinm. r0, r4, 0, 6, 6
    beq-    branch_0x8019d93c
    extrwi. r30, r4, 8, 8
    bne-    branch_0x8019d910
    addi    r3, r29, 0x70
    bl      calcViewMtx__22TPollutionCounterLayerFv
branch_0x8019d910:
    addi    r31, r29, 0x70
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      countTexDegree__22TPollutionCounterLayerFi
    lwz     r3, 0x10(r29)
    subi    r0, r3, 0x1
    cmpw    r30, r0
    bne-    branch_0x8019d944
    mr      r3, r31
    bl      resetTask__22TPollutionCounterLayerFv
    b       branch_0x8019d944

branch_0x8019d93c:
    mr      r3, r29
    bl      perform__18TJointModelManagerFUlPQ26JDrama9TGraphics
branch_0x8019d944:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl cleanedAll__17TPollutionManagerCFv
cleanedAll__17TPollutionManagerCFv: # 0x8019d960
    stwu    sp, -0x30(sp)
    li      r8, 0x0
    addi    r7, r8, 0x0
    stw     r31, 0x2c(sp)
    addi    r4, r8, 0x0
    lwz     r9, 0x10(r3)
    cmpwi   r9, 0x0
    ble-    branch_0x8019da40
    cmpwi   r9, 0x8
    subi    r5, r9, 0x8
    ble-    branch_0x8019da14
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmpwi   r5, 0x0
    mtctr   r0
    ble-    branch_0x8019da14
branch_0x8019d9a0:
    lwz     r0, 0x14(r3)
    addi    r7, r7, 0x8
    add     r6, r0, r4
    lwz     r5, 0x0(r6)
    addi    r4, r4, 0x20
    lwz     r10, 0x4(r6)
    lwz     r0, 0x34(r5)
    lwz     r5, 0x8(r6)
    add     r8, r8, r0
    lwz     r0, 0x34(r10)
    lwz     r31, 0xc(r6)
    add     r8, r8, r0
    lwz     r0, 0x34(r5)
    lwz     r12, 0x10(r6)
    add     r8, r8, r0
    lwz     r0, 0x34(r31)
    lwz     r11, 0x14(r6)
    add     r8, r8, r0
    lwz     r10, 0x18(r6)
    lwz     r5, 0x1c(r6)
    lwz     r6, 0x34(r12)
    lwz     r0, 0x34(r11)
    add     r8, r8, r6
    lwz     r6, 0x34(r10)
    add     r8, r8, r0
    lwz     r0, 0x34(r5)
    add     r8, r8, r6
    add     r8, r8, r0
    bdnz+      branch_0x8019d9a0
branch_0x8019da14:
    subf    r0, r7, r9
    cmpw    r7, r9
    mtctr   r0
    slwi    r4, r7, 2
    bge-    branch_0x8019da40
branch_0x8019da28:
    lwz     r5, 0x14(r3)
    lwzx    r5, r5, r4
    addi    r4, r4, 0x4
    lwz     r0, 0x34(r5)
    add     r8, r8, r0
    bdnz+      branch_0x8019da28
branch_0x8019da40:
    lwz     r0, -0x7b00(r13)
    cmplw   r8, r0
    bge-    branch_0x8019da54
    li      r3, 0x1
    b       branch_0x8019da60

branch_0x8019da54:
    li      r3, 0x0
    b       branch_0x8019da60
    b       branch_0x8019da14

branch_0x8019da60:
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    blr


.globl isPolluted__17TPollutionManagerCFfff
isPolluted__17TPollutionManagerCFfff: # 0x8019da6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f3
    stfd    f30, 0x40(sp)
    fmr     f30, f2
    stfd    f29, 0x38(sp)
    fmr     f29, f1
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    li      r30, 0x0
    stw     r29, 0x2c(sp)
    mr      r29, r3
    b       branch_0x8019dae8

branch_0x8019daac:
    lwz     r3, 0x14(r29)
    fmr     f1, f29
    fmr     f2, f30
    lwzx    r3, r3, r31
    fmr     f3, f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x50(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8019dae0
    li      r3, 0x1
    b       branch_0x8019daf8

branch_0x8019dae0:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8019dae8:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x8019daac
    li      r3, 0x0
branch_0x8019daf8:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    mtlr    r0
    lfd     f29, 0x38(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x50
    blr


.globl getPollutionDegree__17TPollutionManagerCFv
getPollutionDegree__17TPollutionManagerCFv: # 0x8019db20
    stwu    sp, -0x28(sp)
    li      r12, 0x0
    li      r4, 0x0
    stw     r31, 0x24(sp)
    li      r31, 0x0
    lwz     r7, 0x10(r3)
    cmpwi   r7, 0x0
    ble-    branch_0x8019dc00
    cmpwi   r7, 0x8
    subi    r5, r7, 0x8
    ble-    branch_0x8019dbd4
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmpwi   r5, 0x0
    mtctr   r0
    ble-    branch_0x8019dbd4
branch_0x8019db60:
    lwz     r0, 0x14(r3)
    addi    r31, r31, 0x8
    add     r6, r0, r4
    lwz     r5, 0x0(r6)
    addi    r4, r4, 0x20
    lwz     r8, 0x4(r6)
    lwz     r0, 0x34(r5)
    lwz     r5, 0x8(r6)
    add     r12, r12, r0
    lwz     r0, 0x34(r8)
    lwz     r11, 0xc(r6)
    add     r12, r12, r0
    lwz     r0, 0x34(r5)
    lwz     r10, 0x10(r6)
    add     r12, r12, r0
    lwz     r0, 0x34(r11)
    lwz     r9, 0x14(r6)
    add     r12, r12, r0
    lwz     r8, 0x18(r6)
    lwz     r5, 0x1c(r6)
    lwz     r6, 0x34(r10)
    lwz     r0, 0x34(r9)
    add     r12, r12, r6
    lwz     r6, 0x34(r8)
    add     r12, r12, r0
    lwz     r0, 0x34(r5)
    add     r12, r12, r6
    add     r12, r12, r0
    bdnz+      branch_0x8019db60
branch_0x8019dbd4:
    subf    r0, r31, r7
    cmpw    r31, r7
    mtctr   r0
    slwi    r4, r31, 2
    bge-    branch_0x8019dc00
branch_0x8019dbe8:
    lwz     r5, 0x14(r3)
    lwzx    r5, r5, r4
    addi    r4, r4, 0x4
    lwz     r0, 0x34(r5)
    add     r12, r12, r0
    bdnz+      branch_0x8019dbe8
branch_0x8019dc00:
    mr      r3, r12
    b       branch_0x8019dc0c
    b       branch_0x8019dbd4

branch_0x8019dc0c:
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    blr


.globl getPollutionType__17TPollutionManagerCFfff
getPollutionType__17TPollutionManagerCFfff: # 0x8019dc18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f3
    stfd    f30, 0x48(sp)
    fmr     f30, f2
    stfd    f29, 0x40(sp)
    fmr     f29, f1
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    b       branch_0x8019dc9c

branch_0x8019dc58:
    lwz     r3, 0x14(r29)
    fmr     f1, f29
    fmr     f2, f30
    lwzx    r3, r3, r31
    fmr     f3, f31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8019dc94
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r31
    lhz     r3, 0x30(r3)
    b       branch_0x8019dcac

branch_0x8019dc94:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8019dc9c:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x8019dc58
    li      r3, 0xa
branch_0x8019dcac:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x58
    blr


.globl stampGround__17TPollutionManagerFUsffff
stampGround__17TPollutionManagerFUsffff: # 0x8019dcd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f4
    stfd    f30, 0x50(sp)
    fmr     f30, f3
    stfd    f29, 0x48(sp)
    fmr     f29, f2
    stfd    f28, 0x40(sp)
    fmr     f28, f1
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r4
    stw     r28, 0x30(sp)
    mr      r28, r3
    b       branch_0x8019dd78

branch_0x8019dd24:
    lwz     r3, 0x14(r28)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8019dd70
    lwz     r3, 0x14(r28)
    fmr     f1, f28
    fmr     f2, f29
    mr      r4, r29
    lwzx    r3, r3, r31
    fmr     f3, f30
    lwz     r12, 0x0(r3)
    fmr     f4, f31
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
branch_0x8019dd70:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8019dd78:
    lwz     r0, 0x10(r28)
    cmpw    r30, r0
    blt+    branch_0x8019dd24
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x60
    blr


.globl clean__17TPollutionManagerFffff
clean__17TPollutionManagerFffff: # 0x8019ddb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    fmr     f31, f4
    stfd    f30, 0x60(sp)
    fmr     f30, f3
    stfd    f29, 0x58(sp)
    fmr     f29, f2
    stfd    f28, 0x50(sp)
    fmr     f28, f1
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    lwz     r4, gpMarDirector(r13)
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x1
    bne-    branch_0x8019de0c
    lfs     f0, -0x4188(rtoc)
    fcmpo   cr0, f29, f0
    blt-    branch_0x8019de58
branch_0x8019de0c:
    li      r30, 0x0
    addi    r31, r30, 0x0
    b       branch_0x8019de4c

branch_0x8019de18:
    lwz     r3, 0x14(r29)
    fmr     f1, f28
    fmr     f2, f29
    li      r4, 0x0
    lwzx    r3, r3, r31
    fmr     f3, f30
    lwz     r12, 0x0(r3)
    fmr     f4, f31
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8019de4c:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x8019de18
branch_0x8019de58:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lfd     f28, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x70
    blr


.globl stamp__17TPollutionManagerFUsffff
stamp__17TPollutionManagerFUsffff: # 0x8019de84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f4
    stfd    f30, 0x50(sp)
    fmr     f30, f3
    stfd    f29, 0x48(sp)
    fmr     f29, f2
    stfd    f28, 0x40(sp)
    fmr     f28, f1
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r4
    stw     r28, 0x30(sp)
    mr      r28, r3
    b       branch_0x8019df08

branch_0x8019ded4:
    lwz     r3, 0x14(r28)
    fmr     f1, f28
    fmr     f2, f29
    mr      r4, r29
    lwzx    r3, r3, r31
    fmr     f3, f30
    lwz     r12, 0x0(r3)
    fmr     f4, f31
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8019df08:
    lwz     r0, 0x10(r28)
    cmpw    r30, r0
    blt+    branch_0x8019ded4
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x60
    blr


.globl stampModel__17TPollutionManagerFP8J3DModel
stampModel__17TPollutionManagerFP8J3DModel: # 0x8019df44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    li      r30, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    b       branch_0x8019dfb8

branch_0x8019df74:
    lwz     r3, 0x14(r28)
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8019dfb0
    lwz     r3, 0x14(r28)
    mr      r4, r29
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
branch_0x8019dfb0:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8019dfb8:
    lwz     r0, 0x10(r28)
    cmpw    r30, r0
    blt+    branch_0x8019df74
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl getPlaneType__25TPollutionLayerWallMinusXCFv
getPlaneType__25TPollutionLayerWallMinusXCFv: # 0x8019dfe4
    li      r3, 0x3
    blr


.globl getTexPosS__25TPollutionLayerWallMinusXCFf
getTexPosS__25TPollutionLayerWallMinusXCFf: # 0x8019dfec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x40(r3)
    addi    r3, r3, 0x5c
    fsubs   f1, f1, f0
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isInArea__24TPollutionLayerWallPlusXCFfff
isInArea__24TPollutionLayerWallPlusXCFfff: # 0x8019e018
    lfs     f0, 0x40(r3)
    fcmpo   cr0, f3, f0
    blt-    branch_0x8019e048
    lfs     f0, 0x44(r3)
    fcmpo   cr0, f0, f3
    blt-    branch_0x8019e048
    lfs     f0, 0xac(r3)
    fcmpo   cr0, f2, f0
    blt-    branch_0x8019e048
    lfs     f0, 0xb0(r3)
    fcmpo   cr0, f0, f2
    bge-    branch_0x8019e050
branch_0x8019e048:
    li      r3, 0x0
    blr

branch_0x8019e050:
    li      r3, 0x1
    blr


.globl isInAreaSize__24TPollutionLayerWallPlusXCFffff
isInAreaSize__24TPollutionLayerWallPlusXCFffff: # 0x8019e058
    lfs     f0, 0x40(r3)
    fsubs   f0, f0, f4
    fcmpo   cr0, f3, f0
    blt-    branch_0x8019e098
    lfs     f0, 0x44(r3)
    fadds   f0, f0, f4
    fcmpo   cr0, f0, f3
    blt-    branch_0x8019e098
    lfs     f0, 0xac(r3)
    fsubs   f0, f0, f4
    fcmpo   cr0, f2, f0
    blt-    branch_0x8019e098
    lfs     f0, 0xb0(r3)
    fadds   f0, f0, f4
    fcmpo   cr0, f0, f2
    bge-    branch_0x8019e0a0
branch_0x8019e098:
    li      r3, 0x0
    blr

branch_0x8019e0a0:
    li      r3, 0x1
    blr


.globl getTexPosT__23TPollutionLayerWallBaseCFf
getTexPosT__23TPollutionLayerWallBaseCFf: # 0x8019e0a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0xb0(r3)
    addi    r3, r3, 0x5c
    fsubs   f1, f0, f1
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getTexResource__15TPollutionLayerFPCc
getTexResource__15TPollutionLayerFPCc: # 0x8019e0d4
    lwz     r3, 0x24(r3)
    lwz     r3, 0xac(r3)
    lwz     r3, 0x4(r3)
    blr


.globl newJointObj__15TPollutionLayerCFv
newJointObj__15TPollutionLayerCFv: # 0x8019e0e4
    mflr    r0
    li      r3, 0x38
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8019e10c
    mr      r3, r31
    bl      __ct__13TPollutionObjFv
branch_0x8019e10c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getJ3DModelDataFlag__15TPollutionLayerCFv
getJ3DModelDataFlag__15TPollutionLayerCFv: # 0x8019e124
    lis     r3, 0x1122
    blr


.globl getPlaneType__25TPollutionLayerWallMinusZCFv
getPlaneType__25TPollutionLayerWallMinusZCFv: # 0x8019e12c
    li      r3, 0x5
    blr


.globl getTexPosS__25TPollutionLayerWallMinusZCFf
getTexPosS__25TPollutionLayerWallMinusZCFf: # 0x8019e134
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x3c(r3)
    addi    r3, r3, 0x5c
    fsubs   f1, f0, f1
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isInArea__24TPollutionLayerWallPlusZCFfff
isInArea__24TPollutionLayerWallPlusZCFfff: # 0x8019e160
    lfs     f0, 0x38(r3)
    fcmpo   cr0, f1, f0
    blt-    branch_0x8019e190
    lfs     f0, 0x3c(r3)
    fcmpo   cr0, f0, f1
    blt-    branch_0x8019e190
    lfs     f0, 0xac(r3)
    fcmpo   cr0, f2, f0
    blt-    branch_0x8019e190
    lfs     f0, 0xb0(r3)
    fcmpo   cr0, f0, f2
    bge-    branch_0x8019e198
branch_0x8019e190:
    li      r3, 0x0
    blr

branch_0x8019e198:
    li      r3, 0x1
    blr


.globl isInAreaSize__24TPollutionLayerWallPlusZCFffff
isInAreaSize__24TPollutionLayerWallPlusZCFffff: # 0x8019e1a0
    lfs     f0, 0x38(r3)
    fsubs   f0, f0, f4
    fcmpo   cr0, f1, f0
    blt-    branch_0x8019e1e0
    lfs     f0, 0x3c(r3)
    fadds   f0, f0, f4
    fcmpo   cr0, f0, f1
    blt-    branch_0x8019e1e0
    lfs     f0, 0xac(r3)
    fsubs   f0, f0, f4
    fcmpo   cr0, f2, f0
    blt-    branch_0x8019e1e0
    lfs     f0, 0xb0(r3)
    fadds   f0, f0, f4
    fcmpo   cr0, f0, f2
    bge-    branch_0x8019e1e8
branch_0x8019e1e0:
    li      r3, 0x0
    blr

branch_0x8019e1e8:
    li      r3, 0x1
    blr


.globl __sinit_PollutionManager_cpp
__sinit_PollutionManager_cpp: # 0x8019e1f0
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7a10
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e238
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8019e238:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e268
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8019e268:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e298
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8019e298:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e2c8
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8019e2c8:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e2f8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8019e2f8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e328
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8019e328:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e358
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8019e358:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e388
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8019e388:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e3b8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8019e3b8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e3e8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8019e3e8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e418
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8019e418:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e448
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8019e448:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e478
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8019e478:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e4a8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8019e4a8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019e4d8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8019e4d8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

