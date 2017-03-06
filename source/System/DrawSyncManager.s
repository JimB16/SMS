
.globl pushBreakPoint__16TDrawSyncManagerFv
pushBreakPoint__16TDrawSyncManagerFv: # 0x802a9020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lhz     r0, 0x34c(r3)
    clrlwi. r0, r0, 30
    bne-    branch_0x802a9064
    bl      GXFlush
    bl      GXGetCPUFifo
    addi    r4, sp, 0x10
    addi    r5, sp, 0xc
    bl      GXGetFifoPtrs
    lwz     r4, 0xc(sp)
    addi    r3, r31, 0x328
    li      r5, 0x1
    bl      OSSendMessage
branch_0x802a9064:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl drawSyncCallbackSub__16TDrawSyncManagerFUs
drawSyncCallbackSub__16TDrawSyncManagerFUs: # 0x802a9078
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    clrlwi. r31, r4, 16
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x802a90b8
    lhz     r0, 0x34c(r30)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x802a9124
    addi    r4, r31, 0x0
    addi    r3, r30, 0x328
    li      r5, 0x1
    bl      OSSendMessage
    b       branch_0x802a9124

branch_0x802a90b8:
    lwz     r6, 0x4(r30)
    lwz     r5, 0x8(r30)
    b       branch_0x802a911c

branch_0x802a90c4:
    lwz     r3, 0x4(r6)
    cmplwi  r3, 0x0
    beq-    branch_0x802a9118
    lhz     r0, 0x0(r6)
    cmplw   r0, r31
    bgt-    branch_0x802a9118
    lhz     r0, 0x2(r6)
    cmplw   r31, r0
    bgt-    branch_0x802a9118
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x34c(r30)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x802a9124
    addi    r4, r31, 0x0
    addi    r3, r30, 0x328
    li      r5, 0x1
    bl      OSSendMessage
    b       branch_0x802a9124

branch_0x802a9118:
    addi    r6, r6, 0x8
branch_0x802a911c:
    cmplw   r6, r5
    bne+    branch_0x802a90c4
branch_0x802a9124:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback
setCallback__16TDrawSyncManagerFUlUsUsP17TDrawSyncCallback: # 0x802a913c
    stwu    sp, -0x30(sp)
    slwi    r4, r4, 3
    sth     r5, 0x28(sp)
    sth     r6, 0x2a(sp)
    stw     r7, 0x2c(sp)
    lwz     r5, 0x4(r3)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    add     r4, r5, r4
    addi    sp, sp, 0x30
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    blr


.globl DestroyElement___Q27JGadget116TVector_Q216TDrawSyncManager19TDrawSyncTokenRange_Q27JGadget53TAllocator_Q216TDrawSyncManager19TDrawSyncTokenRange__FPQ216TDrawSyncManager19TDrawSyncTokenRangePQ216TDrawSyncManager19TDrawSyncTokenRange
DestroyElement___Q27JGadget116TVector_Q216TDrawSyncManager19TDrawSyncTokenRange_Q27JGadget53TAllocator_Q216TDrawSyncManager19TDrawSyncTokenRange__FPQ216TDrawSyncManager19TDrawSyncTokenRangePQ216TDrawSyncManager19TDrawSyncTokenRange: # 0x802a9170
    b       branch_0x802a9178

branch_0x802a9174:
    addi    r4, r4, 0x8
branch_0x802a9178:
    cmplw   r4, r5
    bne+    branch_0x802a9174
    blr


.globl threadFunc__16TDrawSyncManagerFPv
threadFunc__16TDrawSyncManagerFPv: # 0x802a9184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    lis     r31, 0x8000
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x2c(sp)
    lis     r29, 0x1
    stw     r28, 0x28(sp)
branch_0x802a91ac:
    addi    r3, r30, 0x328
    addi    r4, sp, 0x20
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r4, 0x20(sp)
    cmplw   r4, r31
    blt-    branch_0x802a923c
    lwz     r5, 0x348(r30)
    lwz     r0, 0xc(r5)
    lwz     r3, 0x0(r5)
    slwi    r0, r0, 2
    stwx    r4, r3, r0
    lwz     r4, 0xc(r5)
    lwz     r3, 0x4(r5)
    addi    r4, r4, 0x1
    addi    r0, r3, 0x1
    cmplw   r4, r0
    blt-    branch_0x802a91f8
    li      r4, 0x0
branch_0x802a91f8:
    stw     r4, 0xc(r5)
    lwz     r3, 0x348(r30)
    lwz     r4, 0x8(r3)
    lwz     r5, 0xc(r3)
    cmplw   r4, r5
    bgt-    branch_0x802a9218
    subf    r0, r4, r5
    b       branch_0x802a9228

branch_0x802a9218:
    lwz     r3, 0x4(r3)
    addi    r0, r3, 0x1
    add     r0, r5, r0
    subf    r0, r4, r0
branch_0x802a9228:
    cmplwi  r0, 0x2
    bne+    branch_0x802a91ac
    lwz     r3, 0x20(sp)
    bl      GXEnableBreakPt
    b       branch_0x802a91ac

branch_0x802a923c:
    cmplw   r4, r29
    bge-    branch_0x802a92d8
    lwz     r5, 0x348(r30)
    lwz     r4, 0x8(r5)
    lwz     r3, 0x4(r5)
    addi    r4, r4, 0x1
    addi    r0, r3, 0x1
    cmplw   r4, r0
    blt-    branch_0x802a9264
    li      r4, 0x0
branch_0x802a9264:
    stw     r4, 0x8(r5)
    lwz     r28, 0x348(r30)
    lwz     r4, 0x8(r28)
    lwz     r5, 0xc(r28)
    cmplw   r4, r5
    bgt-    branch_0x802a9284
    subf    r0, r4, r5
    b       branch_0x802a9294

branch_0x802a9284:
    lwz     r3, 0x4(r28)
    addi    r0, r3, 0x1
    add     r0, r5, r0
    subf    r0, r4, r0
branch_0x802a9294:
    cmplwi  r0, 0x0
    beq+    branch_0x802a91ac
    cmplwi  r0, 0x1
    bne-    branch_0x802a92ac
    bl      GXDisableBreakPt
    b       branch_0x802a91ac

branch_0x802a92ac:
    cmplwi  r0, 0x2
    blt+    branch_0x802a91ac
    lwz     r4, 0x8(r28)
    addi    r3, r28, 0x0
    addi    r4, r4, 0x1
    bl      getLoopIdx__5TFifoFUl
    lwz     r4, 0x0(r28)
    slwi    r0, r3, 2
    lwzx    r3, r4, r0
    bl      GXEnableBreakPt
    b       branch_0x802a91ac

branch_0x802a92d8:
    lwz     r0, 0x3c(sp)
    li      r3, 0x0
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl getLoopIdx__5TFifoFUl
getLoopIdx__5TFifoFUl: # 0x802a92fc
    lwz     r3, 0x4(r3)
    addi    r0, r3, 0x1
    cmplw   r4, r0
    blt-    branch_0x802a9310
    li      r4, 0x0
branch_0x802a9310:
    mr      r3, r4
    blr


.globl drawSyncCallback__16TDrawSyncManagerFUs
drawSyncCallback__16TDrawSyncManagerFUs: # 0x802a9318
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x5ff0(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802a933c
    mr      r3, r0
    bl      drawSyncCallbackSub__16TDrawSyncManagerFUs
branch_0x802a933c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl start__16TDrawSyncManagerFUlUll
start__16TDrawSyncManagerFUlUll: # 0x802a934c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r3, 0x0
    addi    r31, r4, 0x0
    addi    r27, r5, 0x0
    lwz     r0, -0x5ff0(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802a946c
    li      r3, 0x350
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802a9468
    stw     r30, 0x14(sp)
    addi    r3, sp, 0x18
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      __ct__Q216TDrawSyncManager19TDrawSyncTokenRangeFUsUsP17TDrawSyncCallback
    lwz     r28, 0x14(sp)
    li      r29, 0x0
    lbz     r0, 0x20(sp)
    mr      r5, r26
    addi    r3, r28, 0x0
    stb     r0, 0x0(r28)
    addi    r6, sp, 0x18
    stw     r29, 0x4(r28)
    lwz     r0, 0x4(r28)
    stw     r0, 0x8(r28)
    stw     r29, 0xc(r28)
    lfs     f0, -0x398(rtoc)
    stfs    f0, 0x10(r28)
    stw     r29, 0x14(r28)
    lwz     r4, 0x8(r28)
    bl      insert__Q27JGadget116TVector_Q216TDrawSyncManager19TDrawSyncTokenRange_Q27JGadget53TAllocator_Q216TDrawSyncManager19TDrawSyncTokenRange__FPQ216TDrawSyncManager19TDrawSyncTokenRangeUlRCQ216TDrawSyncManager19TDrawSyncTokenRange
    sth     r29, 0x34c(r28)
    li      r3, 0x1000
    bl      __nwa__FUl
    addi    r6, r3, 0x0
    lis     r4, 0x802b
    subi    r4, r4, 0x6e7c
    addi    r5, r28, 0x0
    addi    r8, r27, 0x0
    addi    r3, r28, 0x18
    addi    r6, r6, 0x1000
    li      r7, 0x1000
    li      r9, 0x0
    bl      OSCreateThread
    li      r3, 0x50
    bl      __nwa__FUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x328
    li      r5, 0x14
    bl      OSInitMessageQueue
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x802a9458
    stw     r31, 0x4(r26)
    stw     r29, 0x8(r26)
    stw     r29, 0xc(r26)
    lwz     r3, 0x4(r26)
    addi    r0, r3, 0x1
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x0(r26)
branch_0x802a9458:
    lwz     r3, 0x14(sp)
    stw     r26, 0x348(r3)
    addi    r3, r3, 0x18
    bl      OSResumeThread
branch_0x802a9468:
    stw     r30, -0x5ff0(r13)
branch_0x802a946c:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    lwz     r3, -0x5ff0(r13)
    mtlr    r0
    blr


.globl insert__Q27JGadget116TVector_Q216TDrawSyncManager19TDrawSyncTokenRange_Q27JGadget53TAllocator_Q216TDrawSyncManager19TDrawSyncTokenRange__FPQ216TDrawSyncManager19TDrawSyncTokenRangeUlRCQ216TDrawSyncManager19TDrawSyncTokenRange
insert__Q27JGadget116TVector_Q216TDrawSyncManager19TDrawSyncTokenRange_Q27JGadget53TAllocator_Q216TDrawSyncManager19TDrawSyncTokenRange__FPQ216TDrawSyncManager19TDrawSyncTokenRangeUlRCQ216TDrawSyncManager19TDrawSyncTokenRange: # 0x802a9484
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stmw    r25, 0xe4(sp)
    mr.     r29, r5
    addi    r30, r3, 0x0
    addi    r31, r6, 0x0
    beq-    branch_0x802a9818
    mr      r27, r4
    bne-    branch_0x802a94b0
    b       branch_0x802a97d8

branch_0x802a94b0:
    lwz     r5, 0x4(r30)
    cmplwi  r5, 0x0
    bne-    branch_0x802a94c4
    li      r3, 0x0
    b       branch_0x802a94d4

branch_0x802a94c4:
    lwz     r0, 0x8(r30)
    subf    r0, r5, r0
    srawi   r3, r0, 3
    addze   r3, r3
branch_0x802a94d4:
    lwz     r0, 0xc(r30)
    add     r3, r29, r3
    cmplw   r3, r0
    bgt-    branch_0x802a968c
    slwi    r0, r29, 3
    lwz     r7, 0x8(r30)
    add     r8, r27, r0
    cmplw   r8, r7
    bge-    branch_0x802a9630
    subf    r9, r0, r7
    addi    r6, r7, 0x0
    addi    r5, r9, 0x0
    b       branch_0x802a9530

branch_0x802a9508:
    cmplwi  r6, 0x0
    beq-    branch_0x802a9528
    lhz     r3, 0x0(r5)
    sth     r3, 0x0(r6)
    lhz     r3, 0x2(r5)
    sth     r3, 0x2(r6)
    lwz     r3, 0x4(r5)
    stw     r3, 0x4(r6)
branch_0x802a9528:
    addi    r6, r6, 0x8
    addi    r5, r5, 0x8
branch_0x802a9530:
    cmplw   r5, r7
    bne+    branch_0x802a9508
    addi    r5, r9, 0x7
    lwz     r7, 0x8(r30)
    subf    r5, r27, r5
    cmplw   r9, r27
    srwi    r5, r5, 3
    ble-    branch_0x802a9618
    srwi.   r3, r5, 3
    mtctr   r3
    beq-    branch_0x802a95f0
branch_0x802a955c:
    lwz     r6, -0x8(r9)
    lwz     r3, -0x4(r9)
    stw     r6, -0x8(r7)
    stw     r3, -0x4(r7)
    lwz     r6, -0x10(r9)
    lwz     r3, -0xc(r9)
    stw     r6, -0x10(r7)
    stw     r3, -0xc(r7)
    lwz     r6, -0x18(r9)
    lwz     r3, -0x14(r9)
    stw     r6, -0x18(r7)
    stw     r3, -0x14(r7)
    lwz     r6, -0x20(r9)
    lwz     r3, -0x1c(r9)
    stw     r6, -0x20(r7)
    stw     r3, -0x1c(r7)
    lwz     r6, -0x28(r9)
    lwz     r3, -0x24(r9)
    stw     r6, -0x28(r7)
    stw     r3, -0x24(r7)
    lwz     r6, -0x30(r9)
    lwz     r3, -0x2c(r9)
    stw     r6, -0x30(r7)
    stw     r3, -0x2c(r7)
    lwz     r6, -0x38(r9)
    lwz     r3, -0x34(r9)
    stw     r6, -0x38(r7)
    stw     r3, -0x34(r7)
    lwz     r6, -0x40(r9)
    lwz     r3, -0x3c(r9)
    subi    r9, r9, 0x40
    stw     r6, -0x40(r7)
    stw     r3, -0x3c(r7)
    subi    r7, r7, 0x40
    bdnz+      branch_0x802a955c
    andi.   r5, r5, 0x7
    beq-    branch_0x802a9618
branch_0x802a95f0:
    mtctr   r5
branch_0x802a95f4:
    lwz     r6, -0x8(r9)
    lwz     r3, -0x4(r9)
    subi    r9, r9, 0x8
    stw     r6, -0x8(r7)
    stw     r3, -0x4(r7)
    subi    r7, r7, 0x8
    bdnz+      branch_0x802a95f4
    b       branch_0x802a9618

branch_0x802a9614:
    addi    r27, r27, 0x8
branch_0x802a9618:
    cmplw   r27, r8
    bne+    branch_0x802a9614
    lwz     r3, 0x8(r30)
    add     r0, r3, r0
    stw     r0, 0x8(r30)
    b       branch_0x802a97d8

branch_0x802a9630:
    mr      r5, r27
    b       branch_0x802a9660

branch_0x802a9638:
    cmplwi  r8, 0x0
    beq-    branch_0x802a9658
    lhz     r3, 0x0(r5)
    sth     r3, 0x0(r8)
    lhz     r3, 0x2(r5)
    sth     r3, 0x2(r8)
    lwz     r3, 0x4(r5)
    stw     r3, 0x4(r8)
branch_0x802a9658:
    addi    r8, r8, 0x8
    addi    r5, r5, 0x8
branch_0x802a9660:
    cmplw   r5, r7
    bne+    branch_0x802a9638
    lwz     r3, 0x8(r30)
    b       branch_0x802a9674

branch_0x802a9670:
    addi    r27, r27, 0x8
branch_0x802a9674:
    cmplw   r27, r3
    bne+    branch_0x802a9670
    lwz     r3, 0x8(r30)
    add     r0, r3, r0
    stw     r0, 0x8(r30)
    b       branch_0x802a97d8

branch_0x802a968c:
    cmplwi  r5, 0x0
    bne-    branch_0x802a969c
    li      r3, 0x0
    b       branch_0x802a96ac

branch_0x802a969c:
    lwz     r0, 0x8(r30)
    subf    r0, r5, r0
    srawi   r3, r0, 3
    addze   r3, r3
branch_0x802a96ac:
    stw     r3, 0xdc(sp)
    lis     r0, 0x4330
    lfd     f2, -0x390(rtoc)
    add     r25, r3, r29
    stw     r0, 0xd8(sp)
    lfs     f0, 0x10(r30)
    lfd     f1, 0xd8(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      __cvt_fp2unsigned
    lwz     r0, 0x14(r30)
    add     r0, r0, r3
    cmplw   r25, r0
    ble-    branch_0x802a96e8
    b       branch_0x802a96ec

branch_0x802a96e8:
    mr      r25, r0
branch_0x802a96ec:
    slwi    r3, r25, 3
    bl      __nw__FUl
    mr.     r26, r3
    bne-    branch_0x802a9704
    lwz     r4, 0x8(r30)
    b       branch_0x802a97d8

branch_0x802a9704:
    stw     r30, 0xc8(sp)
    mr      r28, r26
    stw     r26, 0xcc(sp)
    lwz     r3, 0x4(r30)
    b       branch_0x802a9740

branch_0x802a9718:
    cmplwi  r28, 0x0
    beq-    branch_0x802a9738
    lhz     r0, 0x0(r3)
    sth     r0, 0x0(r28)
    lhz     r0, 0x2(r3)
    sth     r0, 0x2(r28)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r28)
branch_0x802a9738:
    addi    r28, r28, 0x8
    addi    r3, r3, 0x8
branch_0x802a9740:
    cmplw   r3, r27
    bne+    branch_0x802a9718
    slwi    r0, r29, 3
    lwz     r3, 0x8(r30)
    add     r4, r28, r0
    b       branch_0x802a9780

branch_0x802a9758:
    cmplwi  r4, 0x0
    beq-    branch_0x802a9778
    lhz     r0, 0x0(r27)
    sth     r0, 0x0(r4)
    lhz     r0, 0x2(r27)
    sth     r0, 0x2(r4)
    lwz     r0, 0x4(r27)
    stw     r0, 0x4(r4)
branch_0x802a9778:
    addi    r4, r4, 0x8
    addi    r27, r27, 0x8
branch_0x802a9780:
    cmplw   r27, r3
    bne+    branch_0x802a9758
    lwz     r4, 0x4(r30)
    mr      r3, r30
    lwz     r5, 0x8(r30)
    bl      DestroyElement___Q27JGadget116TVector_Q216TDrawSyncManager19TDrawSyncTokenRange_Q27JGadget53TAllocator_Q216TDrawSyncManager19TDrawSyncTokenRange__FPQ216TDrawSyncManager19TDrawSyncTokenRangePQ216TDrawSyncManager19TDrawSyncTokenRange
    lwz     r0, 0x4(r30)
    stw     r0, 0xcc(sp)
    lwz     r3, 0x4(r30)
    lwz     r0, 0x8(r30)
    subf    r0, r3, r0
    srawi   r0, r0, 3
    addze   r0, r0
    add     r0, r29, r0
    slwi    r0, r0, 3
    add     r0, r26, r0
    stw     r0, 0x8(r30)
    stw     r26, 0x4(r30)
    stw     r25, 0xc(r30)
    lwz     r3, 0xcc(sp)
    bl      __dl__FPv
    mr      r4, r28
branch_0x802a97d8:
    lwz     r0, 0x8(r30)
    cmplw   r4, r0
    beq-    branch_0x802a9818
    cmplwi  r29, 0x0
    mtctr   r29
    beq-    branch_0x802a9818
branch_0x802a97f0:
    cmplwi  r4, 0x0
    beq-    branch_0x802a9810
    lhz     r0, 0x0(r31)
    sth     r0, 0x0(r4)
    lhz     r0, 0x2(r31)
    sth     r0, 0x2(r4)
    lwz     r0, 0x4(r31)
    stw     r0, 0x4(r4)
branch_0x802a9810:
    addi    r4, r4, 0x8
    bdnz+      branch_0x802a97f0
branch_0x802a9818:
    lmw     r25, 0xe4(sp)
    lwz     r0, 0x104(sp)
    addi    sp, sp, 0x100
    mtlr    r0
    blr


.globl __ct__Q216TDrawSyncManager19TDrawSyncTokenRangeFUsUsP17TDrawSyncCallback
__ct__Q216TDrawSyncManager19TDrawSyncTokenRangeFUsUsP17TDrawSyncCallback: # 0x802a982c
    sth     r4, 0x0(r3)
    sth     r5, 0x2(r3)
    stw     r6, 0x4(r3)
    blr
