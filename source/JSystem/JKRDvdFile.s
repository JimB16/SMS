
.globl __ct__10JKRDvdFileFv
__ct__10JKRDvdFileFv: # 0x802c0a0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    mr      r3, r31
    bl      __ct__11JKRDisposerFv
    lis     r3, __vvt__7JKRFile@ha
    addi    r0, r3, __vvt__7JKRFile@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lis     r3, __vvt__10JKRDvdFile@ha
    stb     r0, 0x18(r31)
    addi    r0, r3, __vvt__10JKRDvdFile@l
    addi    r4, r31, 0x0
    stw     r0, 0x0(r31)
    addi    r3, r4, 0xe4
    bl      __ct__10JSUPtrLinkFPv
    mr      r3, r31
    bl      initiate__10JKRDvdFileFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__10JKRDvdFileFl
__ct__10JKRDvdFileFl: # 0x802c0a78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r30, 0x8(sp)
    mr      r3, r30
    bl      __ct__11JKRDisposerFv
    lis     r3, __vvt__7JKRFile@ha
    addi    r0, r3, __vvt__7JKRFile@l
    stw     r0, 0x0(r30)
    li      r0, 0x0
    lis     r3, __vvt__10JKRDvdFile@ha
    stb     r0, 0x18(r30)
    addi    r0, r3, __vvt__10JKRDvdFile@l
    addi    r4, r30, 0x0
    stw     r0, 0x0(r30)
    addi    r3, r4, 0xe4
    bl      __ct__10JSUPtrLinkFPv
    mr      r3, r30
    bl      initiate__10JKRDvdFileFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    stb     r3, 0x18(r30)
    mr      r3, r30
    lbz     r0, 0x18(r30)
    cmplwi  r0, 0x0
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10JKRDvdFileFv
__dt__10JKRDvdFileFv: # 0x802c0b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c0b98
    lis     r3, __vvt__10JKRDvdFile@ha
    addi    r0, r3, __vvt__10JKRDvdFile@l
    stw     r0, 0x0(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addic.  r0, r30, 0xe4
    beq-    branch_0x802c0b68
    addi    r3, r30, 0xe4
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802c0b68:
    cmplwi  r30, 0x0
    beq-    branch_0x802c0b88
    lis     r3, __vvt__7JKRFile@ha
    addi    r0, r3, __vvt__7JKRFile@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
branch_0x802c0b88:
    extsh.  r0, r31
    ble-    branch_0x802c0b98
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c0b98:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initiate__10JKRDvdFileFv
initiate__10JKRDvdFileFv: # 0x802c0bb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r31, 0x98(r3)
    addi    r3, r31, 0x1c
    bl      OSInitMutex
    addi    r3, r31, 0x34
    bl      OSInitMutex
    addi    r3, r31, 0xc0
    addi    r4, r31, 0xe0
    li      r5, 0x1
    bl      OSInitMessageQueue
    addi    r3, r31, 0x9c
    addi    r4, r31, 0xbc
    li      r5, 0x1
    bl      OSInitMessageQueue
    li      r0, 0x0
    stw     r0, 0xf4(r31)
    stw     r0, 0x50(r31)
    stw     r0, 0x58(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl open__10JKRDvdFileFPCc
open__10JKRDvdFileFPCc: # 0x802c0c20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802c0c80
    addi    r3, r4, 0x0
    addi    r4, r31, 0x5c
    bl      DVDOpen
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    stb     r0, 0x18(r31)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802c0c80
    lis     r3, sDvdList__10JKRDvdFile@h
    addi    r3, r3, sDvdList__10JKRDvdFile@l
    addi    r4, r31, 0xe4
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r3, r31, 0x5c
    bl      DVDGetCommandBlockStatus
branch_0x802c0c80:
    lwz     r0, 0x1c(sp)
    lbz     r3, 0x18(r31)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl open__10JKRDvdFileFl
open__10JKRDvdFileFl: # 0x802c0c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802c0cf8
    addi    r3, r4, 0x0
    addi    r4, r31, 0x5c
    bl      DVDFastOpen
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    stb     r0, 0x18(r31)
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802c0cf8
    lis     r3, sDvdList__10JKRDvdFile@h
    addi    r3, r3, sDvdList__10JKRDvdFile@l
    addi    r4, r31, 0xe4
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r3, r31, 0x5c
    bl      DVDGetCommandBlockStatus
branch_0x802c0cf8:
    lwz     r0, 0x1c(sp)
    lbz     r3, 0x18(r31)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl close__10JKRDvdFileFv
close__10JKRDvdFileFv: # 0x802c0d10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c0d78
    addi    r3, r31, 0x5c
    bl      DVDClose
    cmpwi   r3, 0x0
    beq-    branch_0x802c0d5c
    li      r0, 0x0
    lis     r3, sDvdList__10JKRDvdFile@h
    stb     r0, 0x18(r31)
    addi    r3, r3, sDvdList__10JKRDvdFile@l
    addi    r4, r31, 0xe4
    bl      remove__10JSUPtrListFP10JSUPtrLink
    b       branch_0x802c0d78

branch_0x802c0d5c:
    lis     r3, unk_803a94a0@ha
    crxor   6, 6, 6
    lis     r4, unk_803a94b0@ha
    addi    r5, r4, unk_803a94b0@l
    addi    r3, r3, unk_803a94a0@l
    li      r4, 0xd4
    bl      OSPanic
branch_0x802c0d78:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl readData__10JKRDvdFileFPvll
readData__10JKRDvdFileFPvll: # 0x802c0d8c
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x1f
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    clrrwi  r30, r0, 5
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r3, r28, 0x1c
    bl      OSLockMutex
    lwz     r0, 0xf4(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802c0de0
    addi    r3, r28, 0x1c
    bl      OSUnlockMutex
    li      r3, -0x1
    b       branch_0x802c0e34

branch_0x802c0de0:
    bl      OSGetCurrentThread
    lis     r4, doneProcess__10JKRDvdFileFlP11DVDFileInfo@h
    stw     r3, 0xf4(r28)
    addi    r7, r4, doneProcess__10JKRDvdFileFlP11DVDFileInfo@l
    addi    r6, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r3, r28, 0x5c
    li      r31, -0x1
    li      r8, 0x2
    bl      DVDReadAsyncPrio
    cmpwi   r3, 0x0
    beq-    branch_0x802c0e20
    mr      r3, r28
    bl      sync__10JKRDvdFileFv
    mr      r31, r3
branch_0x802c0e20:
    li      r0, 0x0
    stw     r0, 0xf4(r28)
    addi    r3, r28, 0x1c
    bl      OSUnlockMutex
    mr      r3, r31
branch_0x802c0e34:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl writeData__10JKRDvdFileFPCvll
writeData__10JKRDvdFileFPCvll: # 0x802c0e54
    li      r3, -0x1
    blr


.globl sync__10JKRDvdFileFv
sync__10JKRDvdFileFv: # 0x802c0e5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x1c
    bl      OSLockMutex
    addi    r3, r31, 0xc0
    addi    r4, sp, 0xc
    li      r5, 0x1
    bl      OSReceiveMessage
    li      r0, 0x0
    stw     r0, 0xf4(r31)
    addi    r3, r31, 0x1c
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    lwz     r3, 0xc(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl doneProcess__10JKRDvdFileFlP11DVDFileInfo
doneProcess__10JKRDvdFileFlP11DVDFileInfo: # 0x802c0eb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x3c(r4)
    addi    r4, r3, 0x0
    addi    r3, r5, 0xc0
    li      r5, 0x0
    bl      OSSendMessage
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getFileSize__10JKRDvdFileCFv
getFileSize__10JKRDvdFileCFv: # 0x802c0ee0
    lwz     r3, 0x90(r3)
    blr


.globl __sinit_JKRDvdFile_cpp
__sinit_JKRDvdFile_cpp: # 0x802c0ee8
    mflr    r0
    lis     r3, sDvdList__10JKRDvdFile@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, sDvdList__10JKRDvdFile@l
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, __dt__21JSUList_10JKRDvdFile_Fv@h
    lis     r3, unk_803fd568@ha
    addi    r5, r3, unk_803fd568@l
    addi    r4, r4, __dt__21JSUList_10JKRDvdFile_Fv@l
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__21JSUList_10JKRDvdFile_Fv
__dt__21JSUList_10JKRDvdFile_Fv: # 0x802c0f34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c0f70
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802c0f70
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c0f70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

