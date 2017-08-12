
.globl loadToAram__16JKRDvdAramRipperFPcUl15JKRExpandSwitchUlUl
loadToAram__16JKRDvdAramRipperFPcUl15JKRExpandSwitchUlUl: # 0x802ebba0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stmw    r27, 0x11c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    addi    r3, sp, 0x20
    bl      __ct__10JKRDvdFileFv
    addi    r3, sp, 0x20
    addi    r4, r27, 0x0
    bl      open__10JKRDvdFileFPCc
    clrlwi. r0, r3, 24
    bne-    branch_0x802ebbf4
    addi    r3, sp, 0x20
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    li      r3, 0x0
    b       branch_0x802ebc20

branch_0x802ebbf4:
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    addi    r3, sp, 0x20
    bl      loadToAram__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchUlUl
    addi    r31, r3, 0x0
    addi    r3, sp, 0x20
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    mr      r3, r31
branch_0x802ebc20:
    lmw     r27, 0x11c(sp)
    lwz     r0, 0x134(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUl
loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUl: # 0x802ebc34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stmw    r27, 0x11c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    addi    r3, sp, 0x20
    bl      __ct__10JKRDvdFileFv
    addi    r3, sp, 0x20
    addi    r4, r27, 0x0
    bl      open__10JKRDvdFileFl
    clrlwi. r0, r3, 24
    bne-    branch_0x802ebc88
    addi    r3, sp, 0x20
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    li      r3, 0x0
    b       branch_0x802ebcb4

branch_0x802ebc88:
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    addi    r3, sp, 0x20
    bl      loadToAram__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchUlUl
    addi    r31, r3, 0x0
    addi    r3, sp, 0x20
    li      r4, -0x1
    bl      __dt__10JKRDvdFileFv
    mr      r3, r31
branch_0x802ebcb4:
    lmw     r27, 0x11c(sp)
    lwz     r0, 0x134(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl loadToAram__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchUlUl
loadToAram__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchUlUl: # 0x802ebcc8
    mflr    r0
    addi    r8, r7, 0x0
    stw     r0, 0x4(sp)
    addi    r7, r6, 0x0
    li      r6, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    bl      loadToAram_Async__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchPFUl_vUlUl
    addi    r31, r3, 0x0
    li      r4, 0x0
    bl      syncAram__16JKRDvdAramRipperFP12JKRADCommandi
    cmplwi  r30, 0x0
    beq-    branch_0x802ebd18
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      __dt__12JKRADCommandFv
    li      r3, -0x1
    b       branch_0x802ebd2c

branch_0x802ebd18:
    lwz     r30, 0x20(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      __dt__12JKRADCommandFv
    mr      r3, r30
branch_0x802ebd2c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl loadToAram_Async__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchPFUl_vUlUl
loadToAram_Async__16JKRDvdAramRipperFP10JKRDvdFileUl15JKRExpandSwitchPFUl_vUlUl: # 0x802ebd44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    addi    r25, r3, 0x0
    addi    r27, r5, 0x0
    addi    r26, r4, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    li      r3, 0x4c
    li      r5, -0x4
    lwz     r0, R13Off_m0x5f30(r13)
    mr      r4, r0
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x802ebd94
    mr      r3, r31
    bl      __ct__12JKRADCommandFv
    mr      r31, r3
branch_0x802ebd94:
    stw     r25, 0x10(r31)
    li      r0, 0x0
    mr      r3, r31
    stw     r26, 0x1c(r31)
    stw     r0, 0x20(r31)
    stw     r27, 0x24(r31)
    stw     r28, 0x40(r31)
    stw     r29, 0x14(r31)
    stw     r30, 0x18(r31)
    bl      callCommand_Async__16JKRDvdAramRipperFP12JKRADCommand
    cmplwi  r3, 0x0
    bne-    branch_0x802ebdd8
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      __dt__12JKRADCommandFv
    li      r3, 0x0
    b       branch_0x802ebddc

branch_0x802ebdd8:
    mr      r3, r31
branch_0x802ebddc:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl callCommand_Async__16JKRDvdAramRipperFP12JKRADCommand
callCommand_Async__16JKRDvdAramRipperFP12JKRADCommand: # 0x802ebdf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r25, 0x84(sp)
    mr      r31, r3
    li      r29, 0x1
    li      r27, 0x0
    lwz     r30, 0x10(r3)
    addi    r3, r30, 0x34
    bl      OSLockMutex
    lwz     r0, 0x50(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802ebe2c
    li      r29, 0x0
    b       branch_0x802ec0e8

branch_0x802ebe2c:
    bl      OSGetCurrentThread
    stw     r3, 0x50(r30)
    li      r3, 0x10
    li      r5, -0x4
    lwz     r4, R13Off_m0x5f30(r13)
    bl      __nw__FUlP7JKRHeapi
    mr.     r25, r3
    beq-    branch_0x802ebe5c
    addi    r3, r25, 0x0
    addi    r4, r30, 0x0
    bl      __ct__18JSUFileInputStreamFP7JKRFile
    mr      r25, r3
branch_0x802ebe5c:
    stw     r25, 0x54(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802ebe8c
    cmplw   r3, r0
    ble-    branch_0x802ebe8c
    mr      r3, r0
branch_0x802ebe8c:
    lwz     r0, 0x24(r31)
    addi    r3, r3, 0x1f
    clrrwi  r28, r3, 5
    cmpwi   r0, 0x1
    bne-    branch_0x802ebf50
    addi    r0, sp, 0x5f
    clrrwi  r27, r0, 5
    addi    r26, r30, 0x5c
branch_0x802ebeac:
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x20
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802ebf08
    lbz     r0, R13Off_m0x7590(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802ebf00
    cmplwi  r25, 0x0
    beq-    branch_0x802ebef8
    mr      r3, r25
    lwz     r12, 0x0(r25)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802ebef8:
    li      r3, 0x0
    b       branch_0x802ec108

branch_0x802ebf00:
    bl      VIWaitForRetrace
    b       branch_0x802ebeac

branch_0x802ebf08:
    mr      r3, r27
    bl      checkCompressed__9JKRDecompFPUc
    lbz     r0, 0x5(r27)
    lwz     r7, 0x18(r31)
    lbz     r4, 0x4(r27)
    slwi    r0, r0, 16
    lbz     r5, 0x6(r27)
    cmplwi  r7, 0x0
    lbz     r6, 0x7(r27)
    insrwi  r0, r4, 8, 0
    insrwi  r0, r5, 8, 16
    or      r0, r6, r0
    addi    r27, r3, 0x0
    mr      r26, r0
    beq-    branch_0x802ebf50
    cmplw   r0, r7
    ble-    branch_0x802ebf50
    mr      r26, r7
branch_0x802ebf50:
    cmpwi   r27, 0x0
    bne-    branch_0x802ebf60
    li      r0, 0x0
    stw     r0, 0x24(r31)
branch_0x802ebf60:
    lwz     r0, 0x24(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x802ebfe8
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802ebfb8
    lwz     r0, 0x20(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802ebfb8
    lwz     r3, R13Off_m0x5f90(r13)
    addi    r4, r26, 0x0
    li      r5, 0x0
    lwz     r3, 0x78(r3)
    bl      alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
    stw     r3, 0x20(r31)
    lwz     r3, 0x20(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ebfb0
    lwz     r0, 0x14(r3)
    stw     r0, 0x1c(r31)
branch_0x802ebfb0:
    lwz     r0, 0x20(r31)
    stw     r0, 0x4c(r30)
branch_0x802ebfb8:
    lwz     r3, 0x20(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ebfcc
    lwz     r0, 0x14(r3)
    stw     r0, 0x1c(r31)
branch_0x802ebfcc:
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec048
    li      r0, 0x0
    stw     r0, 0x50(r30)
    li      r3, 0x0
    b       branch_0x802ec108

branch_0x802ebfe8:
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec018
    lwz     r0, 0x20(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec018
    lwz     r3, R13Off_m0x5f90(r13)
    addi    r4, r28, 0x0
    li      r5, 0x0
    lwz     r3, 0x78(r3)
    bl      alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
    stw     r3, 0x20(r31)
branch_0x802ec018:
    lwz     r3, 0x20(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ec02c
    lwz     r0, 0x14(r3)
    stw     r0, 0x1c(r31)
branch_0x802ec02c:
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec048
    li      r0, 0x0
    stw     r0, 0x50(r30)
    li      r3, 0x0
    b       branch_0x802ec108

branch_0x802ec048:
    cmpwi   r27, 0x0
    bne-    branch_0x802ec06c
    lwz     r6, 0x14(r31)
    mr      r3, r25
    lwz     r4, 0x1c(r31)
    subf    r5, r6, r28
    bl      write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUl
    stw     r3, 0x48(r31)
    b       branch_0x802ec0bc

branch_0x802ec06c:
    cmpwi   r27, 0x1
    bne-    branch_0x802ec090
    lwz     r6, 0x14(r31)
    mr      r3, r25
    lwz     r4, 0x1c(r31)
    subf    r5, r6, r28
    bl      write_StreamToAram_Async__13JKRAramStreamFP18JSUFileInputStreamUlUlUl
    stw     r3, 0x48(r31)
    b       branch_0x802ec0bc

branch_0x802ec090:
    cmpwi   r27, 0x2
    bne-    branch_0x802ec0bc
    li      r0, 0x0
    stw     r0, 0x48(r31)
    addi    r5, r28, 0x0
    addi    r6, r26, 0x0
    lwz     r3, 0x10(r31)
    li      r8, 0x0
    lwz     r4, 0x1c(r31)
    lwz     r7, 0x14(r31)
    bl      JKRDecompressFromDVDToAram__FP10JKRDvdFileUlUlUlUlUl
branch_0x802ec0bc:
    lwz     r12, 0x40(r31)
    cmplwi  r12, 0x0
    bne-    branch_0x802ec0dc
    lis     r3, sDvdAramAsyncList__16JKRDvdAramRipper@h
    addi    r3, r3, sDvdAramAsyncList__16JKRDvdAramRipper@l
    addi    r4, r31, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
    b       branch_0x802ec0e8

branch_0x802ec0dc:
    mtlr    r12
    addi    r3, r31, 0x0
    blrl
branch_0x802ec0e8:
    addi    r3, r30, 0x34
    bl      OSUnlockMutex
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802ec104
    mr      r3, r31
    b       branch_0x802ec108

branch_0x802ec104:
    li      r3, 0x0
branch_0x802ec108:
    lmw     r25, 0x84(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl syncAram__16JKRDvdAramRipperFP12JKRADCommandi
syncAram__16JKRDvdAramRipperFP12JKRADCommandi: # 0x802ec11c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r31, 0x10(r3)
    addi    r3, r31, 0x34
    bl      OSLockMutex
    lwz     r3, 0x48(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802ec17c
    mr      r4, r30
    bl      sync__13JKRAramStreamFP20JKRAramStreamCommandi
    cmpwi   r30, 0x0
    beq-    branch_0x802ec17c
    cmplwi  r3, 0x0
    bne-    branch_0x802ec17c
    addi    r3, r31, 0x34
    bl      OSUnlockMutex
    li      r3, 0x0
    b       branch_0x802ec1d0

branch_0x802ec17c:
    lis     r3, sDvdAramAsyncList__16JKRDvdAramRipper@h
    addi    r3, r3, sDvdAramAsyncList__16JKRDvdAramRipper@l
    addi    r4, r29, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r3, 0x48(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802ec19c
    bl      __dl__FPv
branch_0x802ec19c:
    lwz     r3, 0x54(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ec1bc
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802ec1bc:
    li      r0, 0x0
    stw     r0, 0x50(r31)
    addi    r3, r31, 0x34
    bl      OSUnlockMutex
    li      r3, 0x1
branch_0x802ec1d0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__12JKRADCommandFv
__ct__12JKRADCommandFv: # 0x802ec1ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, r31, 0x0
    bl      __ct__10JSUPtrLinkFPv
    li      r0, 0x0
    stb     r0, 0x44(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12JKRADCommandFv
__dt__12JKRADCommandFv: # 0x802ec228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ec298
    lbz     r0, 0x44(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x802ec274
    lwz     r3, 0x10(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802ec274
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802ec274:
    cmplwi  r30, 0x0
    beq-    branch_0x802ec288
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802ec288:
    extsh.  r0, r31
    ble-    branch_0x802ec298
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ec298:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JKRDecompressFromDVDToAram__FP10JKRDvdFileUlUlUlUlUl
JKRDecompressFromDVDToAram__FP10JKRDvdFileUlUlUlUlUl: # 0x802ec2b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r25, 0x34(sp)
    addi    r25, r5, 0x0
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r26, r6, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    li      r31, 0x0
    li      r5, 0x20
    lwz     r9, R13Off_m0x5f30(r13)
    lwz     r0, R13Off_m0x758c(r13)
    lwz     r12, 0x0(r9)
    mr      r3, r9
    mr      r4, r0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, R13Off_m0x5e50(r13)
    li      r4, 0x1120
    lwz     r0, R13Off_m0x758c(r13)
    li      r5, 0x0
    lwz     r6, R13Off_m0x5e50(r13)
    lwz     r3, R13Off_m0x5f30(r13)
    add     r0, r6, r0
    stw     r0, R13Off_m0x5e4c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, R13Off_m0x5e48(r13)
    li      r4, 0x100
    lwz     r3, R13Off_m0x5f30(r13)
    li      r5, 0x20
    lwz     r6, R13Off_m0x5e48(r13)
    addi    r0, r6, 0x1120
    stw     r6, R13Off_m0x5e40(r13)
    stw     r0, R13Off_m0x5e44(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, R13Off_m0x5e3c(r13)
    subf    r3, r28, r25
    li      r0, 0x0
    lwz     r5, R13Off_m0x5e3c(r13)
    stw     r29, R13Off_m0x5e24(r13)
    addi    r4, r5, 0x100
    stw     r4, R13Off_m0x5e38(r13)
    stw     r5, R13Off_m0x5e34(r13)
    stw     r28, R13Off_m0x5e30(r13)
    stw     r3, R13Off_m0x5e2c(r13)
    stw     r27, R13Off_m0x5e20(r13)
    stw     r0, R13Off_m0x5e1c(r13)
    stw     r26, R13Off_m0x5e18(r13)
    bl      firstSrcData__Fv_802ec660
    cmplwi  r3, 0x0
    beq-    branch_0x802ec3b0
    mr      r4, r30
    bl      decompSZS_subroutine__FPUcUl
    mr      r31, r3
branch_0x802ec3b0:
    lwz     r3, R13Off_m0x5e50(r13)
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    lwz     r3, R13Off_m0x5e48(r13)
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    lwz     r3, R13Off_m0x5e3c(r13)
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    mr      r3, r31
    lmw     r25, 0x34(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl decompSZS_subroutine__FPUcUl
decompSZS_subroutine__FPUcUl: # 0x802ec3ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r25, r4, 0x0
    addi    r26, r25, 0x0
    li      r29, 0x0
    li      r28, 0x0
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x59
    bne-    branch_0x802ec43c
    lbz     r0, 0x1(r3)
    cmpwi   r0, 0x61
    bne-    branch_0x802ec43c
    lbz     r0, 0x2(r3)
    cmpwi   r0, 0x7a
    bne-    branch_0x802ec43c
    lbz     r0, 0x3(r3)
    cmpwi   r0, 0x30
    beq-    branch_0x802ec444
branch_0x802ec43c:
    li      r3, -0x1
    b       branch_0x802ec64c

branch_0x802ec444:
    lwz     r5, R13Off_m0x5e20(r13)
    lwz     r4, 0x4(r3)
    lwz     r0, R13Off_m0x5e18(r13)
    subf    r4, r5, r4
    add     r4, r25, r4
    add     r0, r25, r0
    cmplw   r4, r0
    addi    r31, r4, 0x0
    ble-    branch_0x802ec46c
    mr      r31, r0
branch_0x802ec46c:
    addi    r24, r3, 0x10
branch_0x802ec470:
    cmpwi   r29, 0x0
    bne-    branch_0x802ec4a8
    lwz     r0, R13Off_m0x5e28(r13)
    cmplw   r24, r0
    ble-    branch_0x802ec49c
    lwz     r0, R13Off_m0x5e2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802ec49c
    mr      r3, r24
    bl      nextSrcData__FPUc_802ec718
    mr      r24, r3
branch_0x802ec49c:
    lbz     r28, 0x0(r24)
    li      r29, 0x8
    addi    r24, r24, 0x1
branch_0x802ec4a8:
    rlwinm. r0, r28, 0, 24, 24
    beq-    branch_0x802ec53c
    lwz     r3, R13Off_m0x5e1c(r13)
    lwz     r0, R13Off_m0x5e20(r13)
    cmplw   r3, r0
    blt-    branch_0x802ec4fc
    lwz     r3, R13Off_m0x5e34(r13)
    addi    r25, r25, 0x1
    lbz     r4, 0x0(r24)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5e34(r13)
    stb     r4, 0x0(r3)
    lwz     r3, R13Off_m0x5e34(r13)
    lwz     r0, R13Off_m0x5e38(r13)
    cmplw   r3, r0
    bne-    branch_0x802ec4f4
    mr      r3, r26
    bl      dmaBufferFlush__FUl
    add     r26, r26, r3
branch_0x802ec4f4:
    cmplw   r25, r31
    beq-    branch_0x802ec640
branch_0x802ec4fc:
    lwz     r3, R13Off_m0x5e40(r13)
    lbz     r4, 0x0(r24)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5e40(r13)
    stb     r4, 0x0(r3)
    lwz     r3, R13Off_m0x5e40(r13)
    lwz     r0, R13Off_m0x5e44(r13)
    cmplw   r3, r0
    bne-    branch_0x802ec528
    lwz     r0, R13Off_m0x5e48(r13)
    stw     r0, R13Off_m0x5e40(r13)
branch_0x802ec528:
    lwz     r3, R13Off_m0x5e1c(r13)
    addi    r24, r24, 0x1
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5e1c(r13)
    b       branch_0x802ec630

branch_0x802ec53c:
    lbz     r5, 0x0(r24)
    lbz     r3, 0x1(r24)
    addi    r24, r24, 0x2
    lwz     r0, R13Off_m0x5e40(r13)
    insrwi  r3, r5, 4, 20
    lwz     r4, R13Off_m0x5e48(r13)
    subf    r3, r3, r0
    addi    r0, r3, -0x1
    cmplw   r0, r4
    mr      r30, r0
    srawi   r27, r5, 4
    bge-    branch_0x802ec578
    lwz     r0, R13Off_m0x5e44(r13)
    subf    r0, r4, r0
    add     r30, r30, r0
branch_0x802ec578:
    cmpwi   r27, 0x0
    bne-    branch_0x802ec590
    lbz     r3, 0x0(r24)
    addi    r24, r24, 0x1
    addi    r27, r3, 0x12
    b       branch_0x802ec594

branch_0x802ec590:
    addi    r27, r27, 0x2
branch_0x802ec594:
    lwz     r3, R13Off_m0x5e1c(r13)
    lwz     r0, R13Off_m0x5e20(r13)
    cmplw   r3, r0
    blt-    branch_0x802ec5e0
    lwz     r3, R13Off_m0x5e34(r13)
    addi    r25, r25, 0x1
    lbz     r4, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5e34(r13)
    stb     r4, 0x0(r3)
    lwz     r3, R13Off_m0x5e34(r13)
    lwz     r0, R13Off_m0x5e38(r13)
    cmplw   r3, r0
    bne-    branch_0x802ec5d8
    mr      r3, r26
    bl      dmaBufferFlush__FUl
    add     r26, r26, r3
branch_0x802ec5d8:
    cmplw   r25, r31
    beq-    branch_0x802ec630
branch_0x802ec5e0:
    lwz     r3, R13Off_m0x5e40(r13)
    lbz     r4, 0x0(r30)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5e40(r13)
    stb     r4, 0x0(r3)
    lwz     r0, R13Off_m0x5e40(r13)
    lwz     r3, R13Off_m0x5e44(r13)
    cmplw   r0, r3
    bne-    branch_0x802ec60c
    lwz     r0, R13Off_m0x5e48(r13)
    stw     r0, R13Off_m0x5e40(r13)
branch_0x802ec60c:
    addi    r30, r30, 0x1
    cmplw   r30, r3
    bne-    branch_0x802ec61c
    lwz     r30, R13Off_m0x5e48(r13)
branch_0x802ec61c:
    lwz     r3, R13Off_m0x5e1c(r13)
    subic.  r27, r27, 0x1
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5e1c(r13)
    bne+    branch_0x802ec594
branch_0x802ec630:
    cmplw   r25, r31
    slwi    r28, r28, 1
    addi    r29, r29, -0x1
    blt+    branch_0x802ec470
branch_0x802ec640:
    mr      r3, r26
    bl      dmaBufferFlush__FUl
    li      r3, 0x0
branch_0x802ec64c:
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl firstSrcData__Fv_802ec660
firstSrcData__Fv_802ec660: # 0x802ec660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    lwz     r4, R13Off_m0x5e4c(r13)
    lwz     r3, R13Off_m0x5e50(r13)
    addi    r0, r4, -0x19
    lwz     r31, R13Off_m0x5e2c(r13)
    subf    r4, r3, r4
    stw     r0, R13Off_m0x5e28(r13)
    cmplw   r31, r4
    addi    r30, r3, 0x0
    addi    r0, r4, 0x0
    bge-    branch_0x802ec6a0
    b       branch_0x802ec6a4

branch_0x802ec6a0:
    mr      r31, r0
branch_0x802ec6a4:
    lwz     r3, R13Off_m0x5e24(r13)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, r3, 0x5c
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802ec6e4
    lbz     r0, R13Off_m0x7590(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec6dc
    li      r3, 0x0
    b       branch_0x802ec700

branch_0x802ec6dc:
    bl      VIWaitForRetrace
    b       branch_0x802ec6a4

branch_0x802ec6e4:
    lwz     r4, R13Off_m0x5e30(r13)
    mr      r3, r30
    lwz     r0, R13Off_m0x5e2c(r13)
    add     r4, r4, r31
    subf    r0, r31, r0
    stw     r4, R13Off_m0x5e30(r13)
    stw     r0, R13Off_m0x5e2c(r13)
branch_0x802ec700:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl nextSrcData__FPUc_802ec718
nextSrcData__FPUc_802ec718: # 0x802ec718
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    lwz     r0, R13Off_m0x5e4c(r13)
    subf    r0, r4, r0
    clrlwi. r5, r0, 27
    mr      r31, r0
    beq-    branch_0x802ec758
    lwz     r3, R13Off_m0x5e50(r13)
    addi    r0, r3, 0x20
    subf    r30, r5, r0
    b       branch_0x802ec75c

branch_0x802ec758:
    lwz     r30, R13Off_m0x5e50(r13)
branch_0x802ec75c:
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    bl      memcpy
    lwz     r0, R13Off_m0x5e4c(r13)
    add     r31, r30, r31
    lwz     r3, R13Off_m0x5e2c(r13)
    subf    r0, r31, r0
    cmplw   r0, r3
    mr      r29, r0
    ble-    branch_0x802ec788
    mr      r29, r3
branch_0x802ec788:
    lwz     r3, R13Off_m0x5e24(r13)
    mr      r4, r31
    lwz     r6, R13Off_m0x5e30(r13)
    addi    r5, r29, 0x0
    addi    r3, r3, 0x5c
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, 0x0
    bge-    branch_0x802ec7c8
    lbz     r0, R13Off_m0x7590(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec7c0
    li      r3, 0x0
    b       branch_0x802ec7f8

branch_0x802ec7c0:
    bl      VIWaitForRetrace
    b       branch_0x802ec788

branch_0x802ec7c8:
    lwz     r0, R13Off_m0x5e2c(r13)
    lwz     r3, R13Off_m0x5e30(r13)
    subf    r0, r29, r0
    stw     r0, R13Off_m0x5e2c(r13)
    add     r3, r3, r29
    lwz     r0, R13Off_m0x5e2c(r13)
    stw     r3, R13Off_m0x5e30(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec7f4
    add     r0, r31, r29
    stw     r0, R13Off_m0x5e28(r13)
branch_0x802ec7f4:
    mr      r3, r30
branch_0x802ec7f8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl dmaBufferFlush__FUl
dmaBufferFlush__FUl: # 0x802ec814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r0, R13Off_m0x5e34(r13)
    lwz     r4, R13Off_m0x5e3c(r13)
    cmplw   r0, r4
    bne-    branch_0x802ec83c
    li      r3, 0x0
    b       branch_0x802ec868

branch_0x802ec83c:
    subf    r5, r4, r0
    addi    r0, r5, 0x1f
    clrrwi  r31, r0, 5
    addi    r5, r3, 0x0
    addi    r6, r31, 0x0
    li      r3, 0x0
    li      r7, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    lwz     r0, R13Off_m0x5e3c(r13)
    mr      r3, r31
    stw     r0, R13Off_m0x5e34(r13)
branch_0x802ec868:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_JKRDvdAramRipper_cpp
__sinit_JKRDvdAramRipper_cpp: # 0x802ec87c
    mflr    r0
    lis     r3, sDvdAramAsyncList__16JKRDvdAramRipper@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, sDvdAramAsyncList__16JKRDvdAramRipper@l
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, __dt__23JSUList_12JKRADCommand_Fv@ha
    lis     r3, unk_803fd5d8@ha
    addi    r5, r3, unk_803fd5d8@l
    addi    r4, r4, __dt__23JSUList_12JKRADCommand_Fv@l
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__23JSUList_12JKRADCommand_Fv
__dt__23JSUList_12JKRADCommand_Fv: # 0x802ec8c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802ec904
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802ec904
    mr      r3, r30
    bl      __dl__FPv
branch_0x802ec904:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

