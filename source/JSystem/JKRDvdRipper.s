
.globl loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
loadToMainRAM__12JKRDvdRipperFPCcPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi: # 0x802ea8fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stmw    r24, 0x128(sp)
    addi    r24, r3, 0x0
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    addi    r31, r10, 0x0
    addi    r3, sp, 0x30
    bl      __ct__10JKRDvdFileFv
    addi    r3, sp, 0x30
    addi    r4, r24, 0x0
    bl      open__10JKRDvdFileFPCc
    clrlwi. r0, r3, 24
    bne-    branch_0x802ea95c
    addi    r3, sp, 0x30
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    li      r3, 0x0
    b       branch_0x802ea994

branch_0x802ea95c:
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    addi    r8, r29, 0x0
    addi    r9, r30, 0x0
    addi    r10, r31, 0x0
    addi    r3, sp, 0x30
    bl      loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    addi    r31, r3, 0x0
    addi    r3, sp, 0x30
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    mr      r3, r31
branch_0x802ea994:
    lmw     r24, 0x128(sp)
    lwz     r0, 0x14c(sp)
    addi    sp, sp, 0x148
    mtlr    r0
    blr


.globl loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi: # 0x802ea9a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stmw    r24, 0x128(sp)
    addi    r24, r3, 0x0
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    addi    r31, r10, 0x0
    addi    r3, sp, 0x30
    bl      __ct__10JKRDvdFileFv
    addi    r3, sp, 0x30
    addi    r4, r24, 0x0
    bl      open__10JKRDvdFileFl
    clrlwi. r0, r3, 24
    bne-    branch_0x802eaa08
    addi    r3, sp, 0x30
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    li      r3, 0x0
    b       branch_0x802eaa40

branch_0x802eaa08:
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    addi    r8, r29, 0x0
    addi    r9, r30, 0x0
    addi    r10, r31, 0x0
    addi    r3, sp, 0x30
    bl      loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    addi    r31, r3, 0x0
    addi    r3, sp, 0x30
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    mr      r3, r31
branch_0x802eaa40:
    lmw     r24, 0x128(sp)
    lwz     r0, 0x14c(sp)
    addi    sp, sp, 0x148
    mtlr    r0
    blr


.globl loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
loadToMainRAM__12JKRDvdRipperFP10JKRDvdFilePUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi: # 0x802eaa54
    mflr    r0
    lis     r11, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stmw    r18, 0xb8(sp)
    mr      r28, r3
    subi    r22, r11, 0x6018
    addi    r26, r4, 0x0
    addi    r24, r5, 0x0
    addi    r29, r6, 0x0
    addi    r21, r7, 0x0
    addi    r19, r8, 0x0
    addi    r31, r9, 0x0
    addi    r18, r10, 0x0
    li      r20, 0x0
    li      r27, 0x0
    li      r23, 0x0
    lwz     r12, 0x0(r28)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmpwi   r24, 0x1
    addi    r0, r3, 0x1f
    clrrwi  r30, r0, 5
    bne-    branch_0x802eab2c
    addi    r0, sp, 0x93
    clrrwi  r25, r0, 5
    addi    r27, r28, 0x5c
branch_0x802eaac4:
    addi    r3, r27, 0x0
    addi    r4, r25, 0x0
    li      r5, 0x20
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802eab00
    lbz     r0, -0x7598(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802eaaf8
    li      r3, 0x0
    b       branch_0x802eae2c

branch_0x802eaaf8:
    bl      VIWaitForRetrace
    b       branch_0x802eaac4

branch_0x802eab00:
    mr      r3, r25
    bl      checkCompressed__9JKRDecompFPUc
    lbz     r0, 0x5(r25)
    addi    r27, r3, 0x0
    lbz     r4, 0x4(r25)
    slwi    r0, r0, 16
    lbz     r5, 0x6(r25)
    insrwi  r0, r4, 8, 0
    lbz     r6, 0x7(r25)
    insrwi  r0, r5, 8, 16
    or      r25, r6, r0
branch_0x802eab2c:
    cmplwi  r18, 0x0
    beq-    branch_0x802eab38
    stw     r27, 0x0(r18)
branch_0x802eab38:
    cmpwi   r27, 0x0
    bne-    branch_0x802eab4c
    cmpwi   r24, 0x1
    bne-    branch_0x802eab4c
    li      r24, 0x0
branch_0x802eab4c:
    cmpwi   r24, 0x1
    bne-    branch_0x802eabec
    cmplwi  r29, 0x0
    beq-    branch_0x802eab68
    cmplw   r25, r29
    ble-    branch_0x802eab68
    mr      r25, r29
branch_0x802eab68:
    cmplwi  r26, 0x0
    bne-    branch_0x802eab98
    cmpwi   r19, 0x1
    bne-    branch_0x802eab80
    li      r4, 0x20
    b       branch_0x802eab84

branch_0x802eab80:
    li      r4, -0x20
branch_0x802eab84:
    addi    r3, r25, 0x0
    addi    r5, r21, 0x0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r26, r3, 0x0
    li      r20, 0x1
branch_0x802eab98:
    cmplwi  r26, 0x0
    bne-    branch_0x802eaba8
    li      r3, 0x0
    b       branch_0x802eae2c

branch_0x802eaba8:
    cmpwi   r27, 0x1
    bne-    branch_0x802eac2c
    addi    r3, r30, 0x0
    addi    r5, r21, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    cmplwi  r3, 0x0
    addi    r23, r3, 0x0
    bne-    branch_0x802eac2c
    clrlwi  r0, r20, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802eac2c
    addi    r3, r26, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r3, 0x0
    b       branch_0x802eae2c

branch_0x802eabec:
    cmplwi  r26, 0x0
    bne-    branch_0x802eac1c
    cmpwi   r19, 0x1
    bne-    branch_0x802eac04
    li      r4, 0x20
    b       branch_0x802eac08

branch_0x802eac04:
    li      r4, -0x20
branch_0x802eac08:
    addi    r5, r21, 0x0
    subf    r3, r31, r30
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r26, r3, 0x0
    li      r20, 0x1
branch_0x802eac1c:
    cmplwi  r26, 0x0
    bne-    branch_0x802eac2c
    li      r3, 0x0
    b       branch_0x802eae2c

branch_0x802eac2c:
    cmpwi   r27, 0x0
    bne-    branch_0x802ead4c
    cmplwi  r31, 0x0
    li      r3, 0x0
    beq-    branch_0x802eac90
    addi    r0, sp, 0x4f
    clrrwi  r19, r0, 5
    addi    r18, r28, 0x5c
branch_0x802eac4c:
    addi    r3, r18, 0x0
    addi    r4, r19, 0x0
    addi    r6, r31, 0x0
    li      r5, 0x20
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802eac88
    lbz     r0, -0x7598(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802eac80
    li      r3, 0x0
    b       branch_0x802eae2c

branch_0x802eac80:
    bl      VIWaitForRetrace
    b       branch_0x802eac4c

branch_0x802eac88:
    mr      r3, r19
    bl      checkCompressed__9JKRDecompFPUc
branch_0x802eac90:
    cmpwi   r3, 0x0
    beq-    branch_0x802eaca8
    cmpwi   r24, 0x2
    beq-    branch_0x802eaca8
    cmpwi   r24, 0x0
    bne-    branch_0x802ead04
branch_0x802eaca8:
    cmplwi  r29, 0x0
    beq-    branch_0x802eacbc
    cmplw   r29, r30
    bge-    branch_0x802eacbc
    mr      r30, r29
branch_0x802eacbc:
    addi    r18, r28, 0x5c
branch_0x802eacc0:
    addi    r3, r18, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802eacfc
    lbz     r0, -0x7598(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802eacf4
    li      r3, 0x0
    b       branch_0x802eae2c

branch_0x802eacf4:
    bl      VIWaitForRetrace
    b       branch_0x802eacc0

branch_0x802eacfc:
    mr      r3, r26
    b       branch_0x802eae2c

branch_0x802ead04:
    cmpwi   r3, 0x2
    bne-    branch_0x802ead38
    addi    r3, r28, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r29, 0x0
    addi    r8, r31, 0x0
    li      r7, 0x0
    bl      JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUl
    addi    r3, r26, 0x0
    addi    r4, r29, 0x0
    bl      DCStoreRange
    b       branch_0x802ead4c

branch_0x802ead38:
    addi    r3, r22, 0x0
    crxor   6, 6, 6
    addi    r5, r22, 0x14
    li      r4, 0x12f
    bl      OSPanic
branch_0x802ead4c:
    cmpwi   r27, 0x1
    bne-    branch_0x802eaddc
    cmplwi  r31, 0x0
    beq-    branch_0x802ead70
    addi    r3, r22, 0x0
    crxor   6, 6, 6
    addi    r5, r22, 0x3c
    li      r4, 0x138
    bl      OSPanic
branch_0x802ead70:
    addi    r3, r28, 0x5c
    addi    r4, r23, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802eadb4
    lbz     r0, -0x7598(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802eada0
    bl      VIWaitForRetrace
branch_0x802eada0:
    addi    r3, r23, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r3, 0x0
    b       branch_0x802eae2c

branch_0x802eadb4:
    addi    r3, r23, 0x0
    addi    r4, r26, 0x0
    addi    r5, r25, 0x0
    addi    r6, r31, 0x0
    bl      orderSync__9JKRDecompFPUcPUcUlUl
    addi    r3, r23, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    mr      r3, r26
    b       branch_0x802eae2c

branch_0x802eaddc:
    cmpwi   r27, 0x2
    bne-    branch_0x802eae14
    addi    r3, r28, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r25, 0x0
    addi    r7, r31, 0x0
    li      r8, 0x0
    bl      JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUl
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    bl      DCStoreRange
    mr      r3, r26
    b       branch_0x802eae2c

branch_0x802eae14:
    clrlwi. r0, r20, 24
    beq-    branch_0x802eae28
    addi    r3, r26, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802eae28:
    li      r3, 0x0
branch_0x802eae2c:
    lmw     r18, 0xb8(sp)
    lwz     r0, 0xf4(sp)
    addi    sp, sp, 0xf0
    mtlr    r0
    blr


.globl JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUl
JKRDecompressFromDVD__FP10JKRDvdFilePvUlUlUlUl: # 0x802eae40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r25, 0x34(sp)
    addi    r27, r5, 0x0
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    li      r31, 0x0
    li      r5, -0x20
    lwz     r9, -0x5f30(r13)
    lwz     r0, -0x7594(r13)
    lwz     r12, 0x0(r9)
    mr      r3, r9
    mr      r4, r0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, -0x5e80(r13)
    cmplwi  r29, 0x0
    lwz     r0, -0x7594(r13)
    lwz     r3, -0x5e80(r13)
    add     r0, r3, r0
    stw     r0, -0x5e7c(r13)
    beq-    branch_0x802eaee0
    lwz     r3, -0x5f30(r13)
    li      r4, 0x1120
    li      r5, -0x4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, -0x5e78(r13)
    lwz     r3, -0x5e78(r13)
    addi    r0, r3, 0x1120
    stw     r3, -0x5e70(r13)
    stw     r0, -0x5e74(r13)
    b       branch_0x802eaee8

branch_0x802eaee0:
    li      r0, 0x0
    stw     r0, -0x5e78(r13)
branch_0x802eaee8:
    subf    r3, r30, r27
    stw     r25, -0x5e60(r13)
    li      r0, 0x0
    stw     r30, -0x5e6c(r13)
    stw     r3, -0x5e68(r13)
    stw     r29, -0x5e5c(r13)
    stw     r0, -0x5e58(r13)
    stw     r28, -0x5e54(r13)
    bl      firstSrcData__Fv_802eb1f4
    cmplwi  r3, 0x0
    beq-    branch_0x802eaf20
    mr      r4, r26
    bl      decompSZS_subroutine__FPUcPUc_802eaf58
    mr      r31, r3
branch_0x802eaf20:
    lwz     r3, -0x5e80(r13)
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    lwz     r3, -0x5e78(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802eaf40
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802eaf40:
    mr      r3, r31
    lmw     r25, 0x34(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl decompSZS_subroutine__FPUcPUc_802eaf58
decompSZS_subroutine__FPUcPUc_802eaf58: # 0x802eaf58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x59
    li      r0, 0x0
    bne-    branch_0x802eafa8
    lbz     r5, 0x1(r3)
    cmpwi   r5, 0x61
    bne-    branch_0x802eafa8
    lbz     r5, 0x2(r3)
    cmpwi   r5, 0x7a
    bne-    branch_0x802eafa8
    lbz     r5, 0x3(r3)
    cmpwi   r5, 0x30
    beq-    branch_0x802eafb0
branch_0x802eafa8:
    li      r3, -0x1
    b       branch_0x802eb1dc

branch_0x802eafb0:
    lwz     r7, -0x5e5c(r13)
    lwz     r6, 0x4(r3)
    lwz     r5, -0x5e54(r13)
    subf    r6, r7, r6
    add     r6, r30, r6
    add     r5, r30, r5
    cmplw   r6, r5
    addi    r31, r6, 0x0
    ble-    branch_0x802eafd8
    mr      r31, r5
branch_0x802eafd8:
    addi    r3, r3, 0x10
branch_0x802eafdc:
    cmpwi   r4, 0x0
    bne-    branch_0x802eb01c
    lwz     r0, -0x5e64(r13)
    cmplw   r3, r0
    ble-    branch_0x802eb010
    lwz     r0, -0x5e68(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802eb010
    bl      nextSrcData__FPUc_802eb2ac
    cmplwi  r3, 0x0
    bne-    branch_0x802eb010
    li      r3, -0x1
    b       branch_0x802eb1dc

branch_0x802eb010:
    lbz     r0, 0x0(r3)
    li      r4, 0x8
    addi    r3, r3, 0x1
branch_0x802eb01c:
    rlwinm. r5, r0, 0, 24, 24
    beq-    branch_0x802eb0ac
    lwz     r6, -0x5e5c(r13)
    cmplwi  r6, 0x0
    beq-    branch_0x802eb084
    lwz     r5, -0x5e58(r13)
    cmplw   r5, r6
    blt-    branch_0x802eb050
    lbz     r5, 0x0(r3)
    stb     r5, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802eb1d8
branch_0x802eb050:
    lwz     r6, -0x5e70(r13)
    lbz     r7, 0x0(r3)
    addi    r5, r6, 0x1
    stw     r5, -0x5e70(r13)
    stb     r7, 0x0(r6)
    lwz     r6, -0x5e70(r13)
    lwz     r5, -0x5e74(r13)
    cmplw   r6, r5
    bne-    branch_0x802eb07c
    lwz     r5, -0x5e78(r13)
    stw     r5, -0x5e70(r13)
branch_0x802eb07c:
    addi    r3, r3, 0x1
    b       branch_0x802eb09c

branch_0x802eb084:
    lbz     r5, 0x0(r3)
    addi    r3, r3, 0x1
    stb     r5, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802eb1d8
branch_0x802eb09c:
    lwz     r5, -0x5e58(r13)
    addi    r5, r5, 0x1
    stw     r5, -0x5e58(r13)
    b       branch_0x802eb1c8

branch_0x802eb0ac:
    lwz     r8, -0x5e5c(r13)
    lbz     r6, 0x0(r3)
    cmplwi  r8, 0x0
    lbz     r9, 0x1(r3)
    insrwi  r9, r6, 4, 20
    srawi   r5, r6, 4
    addi    r3, r3, 0x2
    beq-    branch_0x802eb0f8
    lwz     r6, -0x5e70(r13)
    lwz     r7, -0x5e78(r13)
    subf    r6, r9, r6
    subi    r6, r6, 0x1
    cmplw   r6, r7
    addi    r9, r6, 0x0
    bge-    branch_0x802eb100
    lwz     r6, -0x5e74(r13)
    subf    r6, r7, r6
    add     r9, r9, r6
    b       branch_0x802eb100

branch_0x802eb0f8:
    subf    r6, r9, r30
    subi    r9, r6, 0x1
branch_0x802eb100:
    cmpwi   r5, 0x0
    bne-    branch_0x802eb118
    lbz     r5, 0x0(r3)
    addi    r3, r3, 0x1
    addi    r5, r5, 0x12
    b       branch_0x802eb11c

branch_0x802eb118:
    addi    r5, r5, 0x2
branch_0x802eb11c:
    cmplwi  r8, 0x0
    beq-    branch_0x802eb19c
branch_0x802eb124:
    lwz     r7, -0x5e58(r13)
    lwz     r6, -0x5e5c(r13)
    cmplw   r7, r6
    blt-    branch_0x802eb148
    lbz     r6, 0x0(r9)
    stb     r6, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802eb1c8
branch_0x802eb148:
    lwz     r7, -0x5e70(r13)
    lbz     r8, 0x0(r9)
    addi    r6, r7, 0x1
    stw     r6, -0x5e70(r13)
    stb     r8, 0x0(r7)
    lwz     r6, -0x5e70(r13)
    lwz     r7, -0x5e74(r13)
    cmplw   r6, r7
    bne-    branch_0x802eb174
    lwz     r6, -0x5e78(r13)
    stw     r6, -0x5e70(r13)
branch_0x802eb174:
    addi    r9, r9, 0x1
    cmplw   r9, r7
    bne-    branch_0x802eb184
    lwz     r9, -0x5e78(r13)
branch_0x802eb184:
    lwz     r6, -0x5e58(r13)
    subic.  r5, r5, 0x1
    addi    r6, r6, 0x1
    stw     r6, -0x5e58(r13)
    bne+    branch_0x802eb124
    b       branch_0x802eb1c8

branch_0x802eb19c:
    lbz     r6, 0x0(r9)
    stb     r6, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802eb1c8
    lwz     r6, -0x5e58(r13)
    subic.  r5, r5, 0x1
    addi    r9, r9, 0x1
    addi    r6, r6, 0x1
    stw     r6, -0x5e58(r13)
    bne+    branch_0x802eb19c
branch_0x802eb1c8:
    cmplw   r30, r31
    slwi    r0, r0, 1
    subi    r4, r4, 0x1
    blt+    branch_0x802eafdc
branch_0x802eb1d8:
    li      r3, 0x0
branch_0x802eb1dc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl firstSrcData__Fv_802eb1f4
firstSrcData__Fv_802eb1f4: # 0x802eb1f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    lwz     r4, -0x5e7c(r13)
    lwz     r3, -0x5e80(r13)
    subi    r0, r4, 0x19
    lwz     r31, -0x5e68(r13)
    subf    r4, r3, r4
    stw     r0, -0x5e64(r13)
    cmplw   r31, r4
    addi    r30, r3, 0x0
    addi    r0, r4, 0x0
    bge-    branch_0x802eb234
    b       branch_0x802eb238

branch_0x802eb234:
    mr      r31, r0
branch_0x802eb238:
    lwz     r3, -0x5e60(r13)
    mr      r4, r30
    lwz     r6, -0x5e6c(r13)
    addi    r5, r31, 0x0
    addi    r3, r3, 0x5c
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802eb278
    lbz     r0, -0x7598(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802eb270
    li      r3, 0x0
    b       branch_0x802eb294

branch_0x802eb270:
    bl      VIWaitForRetrace
    b       branch_0x802eb238

branch_0x802eb278:
    lwz     r4, -0x5e6c(r13)
    mr      r3, r30
    lwz     r0, -0x5e68(r13)
    add     r4, r4, r31
    subf    r0, r31, r0
    stw     r4, -0x5e6c(r13)
    stw     r0, -0x5e68(r13)
branch_0x802eb294:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl nextSrcData__FPUc_802eb2ac
nextSrcData__FPUc_802eb2ac: # 0x802eb2ac
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    lwz     r0, -0x5e7c(r13)
    subf    r0, r4, r0
    clrlwi. r5, r0, 27
    mr      r30, r0
    beq-    branch_0x802eb2f0
    lwz     r3, -0x5e80(r13)
    addi    r0, r3, 0x20
    subf    r29, r5, r0
    b       branch_0x802eb2f4

branch_0x802eb2f0:
    lwz     r29, -0x5e80(r13)
branch_0x802eb2f4:
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    bl      memcpy
    lwz     r0, -0x5e7c(r13)
    add     r30, r29, r30
    lwz     r3, -0x5e68(r13)
    subf    r0, r30, r0
    cmplw   r0, r3
    mr      r28, r0
    ble-    branch_0x802eb320
    mr      r28, r3
branch_0x802eb320:
    lis     r3, 0x802f
    subi    r31, r3, 0x4c4c
branch_0x802eb328:
    lwz     r3, -0x5e60(r13)
    mr      r4, r30
    lwz     r6, -0x5e6c(r13)
    addi    r5, r28, 0x0
    addi    r3, r3, 0x5c
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802eb364
    cmplwi  r31, 0x0
    bne-    branch_0x802eb35c
    li      r3, 0x0
    b       branch_0x802eb394

branch_0x802eb35c:
    bl      VIWaitForRetrace
    b       branch_0x802eb328

branch_0x802eb364:
    lwz     r0, -0x5e68(r13)
    lwz     r3, -0x5e6c(r13)
    subf    r0, r28, r0
    stw     r0, -0x5e68(r13)
    add     r3, r3, r28
    lwz     r0, -0x5e68(r13)
    stw     r3, -0x5e6c(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802eb390
    add     r0, r30, r28
    stw     r0, -0x5e64(r13)
branch_0x802eb390:
    mr      r3, r29
branch_0x802eb394:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl isErrorRetry__12JKRDvdRipperFv
isErrorRetry__12JKRDvdRipperFv: # 0x802eb3b4
    lbz     r3, -0x7598(r13)
    blr


.globl __sinit_JKRDvdRipper_cpp
__sinit_JKRDvdRipper_cpp: # 0x802eb3bc
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x4810
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, 0x802f
    lis     r3, 0x8040
    subi    r5, r3, 0x2a38
    subi    r4, r4, 0x4bf8
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__23JSUList_12JKRDMCommand_Fv
__dt__23JSUList_12JKRDMCommand_Fv: # 0x802eb408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802eb444
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802eb444
    mr      r3, r30
    bl      __dl__FPv
branch_0x802eb444:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

