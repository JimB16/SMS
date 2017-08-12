
.globl create__9JKRDecompFl
create__9JKRDecompFl: # 0x802ec920
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x5e10(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802ec964
    lwz     r4, R13Off_m0x5f30(r13)
    li      r3, 0x60
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802ec960
    mr      r4, r31
    bl      __ct__9JKRDecompFl
branch_0x802ec960:
    stw     r3, R13Off_m0x5e10(r13)
branch_0x802ec964:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    lwz     r3, R13Off_m0x5e10(r13)
    mtlr    r0
    blr


.globl __ct__9JKRDecompFl
__ct__9JKRDecompFl: # 0x802ec97c
    mflr    r0
    mr      r6, r4
    stw     r0, 0x4(sp)
    li      r4, 0x4000
    li      r5, 0x10
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9JKRThreadFUlii
    lis     r3, __vvt__9JKRDecomp@h
    lwz     r31, 0x8(sp)
    addi    r0, r3, __vvt__9JKRDecomp@l
    stw     r0, 0x0(r31)
    lwz     r3, 0x2c(r31)
    bl      OSResumeThread
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__9JKRDecompFv
__dt__9JKRDecompFv: # 0x802ec9d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802eca1c
    lis     r3, __vvt__9JKRDecomp@h
    addi    r0, r3, __vvt__9JKRDecomp@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__9JKRThreadFv
    extsh.  r0, r31
    ble-    branch_0x802eca1c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802eca1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl run__9JKRDecompFv
run__9JKRDecompFv: # 0x802eca38
    mflr    r0
    lis     r3, sMessageBuffer__9JKRDecomp@h
    stw     r0, 0x4(sp)
    li      r5, 0x4
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, sMessageBuffer__9JKRDecomp@l
    addi    r4, r31, 0x0
    stw     r30, 0x10(sp)
    addi    r3, r31, 0x10
    bl      OSInitMessageQueue
branch_0x802eca64:
    addi    r3, r31, 0x10
    addi    r4, sp, 0xc
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r30, 0xc(sp)
    lwz     r3, 0x4(r30)
    lwz     r4, 0x8(r30)
    lwz     r5, 0xc(r30)
    lwz     r6, 0x10(r30)
    bl      decode__9JKRDecompFPUcPUcUlUl
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x802ecaac
    cmpwi   r0, 0x1
    bne+    branch_0x802eca64
    lwz     r3, 0x24(r30)
    bl      sendCommand__12JKRAramPieceFP12JKRAMCommand
    b       branch_0x802eca64

branch_0x802ecaac:
    lwz     r12, 0x14(r30)
    cmplwi  r12, 0x0
    beq-    branch_0x802ecac8
    mtlr    r12
    addi    r3, r30, 0x0
    blrl
    b       branch_0x802eca64

branch_0x802ecac8:
    lwz     r3, 0x1c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802ecae4
    li      r4, 0x1
    li      r5, 0x0
    bl      OSSendMessage
    b       branch_0x802eca64

branch_0x802ecae4:
    addi    r3, r30, 0x28
    li      r4, 0x1
    li      r5, 0x0
    bl      OSSendMessage
    b       branch_0x802eca64


.globl sendCommand__9JKRDecompFP16JKRDecompCommand
sendCommand__9JKRDecompFP16JKRDecompCommand: # 0x802ecaf8
    mflr    r0
    lis     r5, sMessageQueue__9JKRDecomp@h
    stw     r0, 0x4(sp)
    addi    r4, r3, 0x0
    addi    r3, r5, sMessageQueue__9JKRDecomp@l
    stwu    sp, -0x8(sp)
    li      r5, 0x1
    bl      OSSendMessage
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl orderSync__9JKRDecompFPUcPUcUlUl
orderSync__9JKRDecompFPUcPUcUlUl: # 0x802ecb28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    addi    r28, r4, 0x0
    addi    r30, r6, 0x0
    li      r3, 0x4c
    li      r5, -0x4
    lwz     r0, R13Off_m0x5f30(r13)
    mr      r4, r0
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x802ecb70
    mr      r3, r31
    bl      __ct__16JKRDecompCommandFv
    mr      r31, r3
branch_0x802ecb70:
    stw     r27, 0x4(r31)
    lis     r3, sMessageQueue__9JKRDecomp@h
    li      r0, 0x0
    stw     r28, 0x8(r31)
    addi    r3, r3, sMessageQueue__9JKRDecomp@l
    mr      r4, r31
    stw     r29, 0xc(r31)
    li      r5, 0x1
    stw     r30, 0x10(r31)
    stw     r0, 0x14(r31)
    bl      OSSendMessage
    addi    r3, r31, 0x28
    addi    r4, sp, 0x30
    li      r5, 0x1
    bl      OSReceiveMessage
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      __dt__16JKRDecompCommandFv
    lmw     r27, 0x44(sp)
    li      r3, 0x1
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl decode__9JKRDecompFPUcPUcUlUl
decode__9JKRDecompFPUcPUcUlUl: # 0x802ecbd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    bl      checkCompressed__9JKRDecompFPUc
    cmpwi   r3, 0x1
    bne-    branch_0x802ecc20
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      decodeSZP__9JKRDecompFPUcPUcUlUl
    b       branch_0x802ecc3c

branch_0x802ecc20:
    cmpwi   r3, 0x2
    bne-    branch_0x802ecc3c
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      decodeSZS__9JKRDecompFPUcPUcUlUl
branch_0x802ecc3c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl decodeSZP__9JKRDecompFPUcPUcUlUl
decodeSZP__9JKRDecompFPUcPUcUlUl: # 0x802ecc5c
    stwu    sp, -0x38(sp)
    cmplwi  r5, 0x0
    stmw    r25, 0x1c(sp)
    lbz     r0, 0x5(r3)
    lbz     r7, 0x9(r3)
    slwi    r30, r0, 16
    lbz     r31, 0x4(r3)
    lbz     r27, 0x8(r3)
    slwi    r11, r7, 16
    lbz     r0, 0xd(r3)
    insrwi  r30, r31, 8, 0
    lbz     r26, 0x6(r3)
    lbz     r8, 0xc(r3)
    slwi    r7, r0, 16
    lbz     r28, 0xa(r3)
    insrwi  r11, r27, 8, 0
    insrwi  r7, r8, 8, 0
    lbz     r9, 0xe(r3)
    insrwi  r30, r26, 8, 16
    lbz     r25, 0x7(r3)
    insrwi  r11, r28, 8, 16
    lbz     r29, 0xb(r3)
    insrwi  r7, r9, 8, 16
    lbz     r10, 0xf(r3)
    or      r9, r29, r11
    or      r10, r10, r7
    or      r0, r25, r30
    li      r8, 0x0
    li      r11, 0x0
    li      r7, 0x10
    beq-    branch_0x802ecdfc
    cmplw   r6, r0
    bgt-    branch_0x802ecdfc
    addi    r30, r4, 0x0
    add     r31, r3, r10
branch_0x802ecce8:
    cmplwi  r11, 0x0
    bne-    branch_0x802ecd1c
    add     r25, r3, r7
    lbz     r12, 0x1(r25)
    li      r11, 0x20
    lbz     r28, 0x0(r25)
    addi    r7, r7, 0x4
    slwi    r12, r12, 16
    lbz     r29, 0x2(r25)
    insrwi  r12, r28, 8, 0
    lbz     r27, 0x3(r25)
    insrwi  r12, r29, 8, 16
    or      r12, r27, r12
branch_0x802ecd1c:
    clrrwi. r28, r12, 31
    beq-    branch_0x802ecd58
    cmplwi  r6, 0x0
    bne-    branch_0x802ecd40
    lbz     r28, 0x0(r31)
    subic.  r5, r5, 0x1
    stb     r28, 0x0(r30)
    bne-    branch_0x802ecd44
    b       branch_0x802ecdfc

branch_0x802ecd40:
    addi    r6, r6, -0x1
branch_0x802ecd44:
    addi    r8, r8, 0x1
    addi    r30, r30, 0x1
    addi    r10, r10, 0x1
    addi    r31, r31, 0x1
    b       branch_0x802ecdec

branch_0x802ecd58:
    add     r25, r3, r9
    lbz     r29, 0x0(r25)
    addi    r9, r9, 0x2
    lbz     r26, 0x1(r25)
    insrwi  r26, r29, 8, 16
    srawi.  r25, r26, 12
    clrlwi  r28, r26, 20
    subf    r26, r28, r8
    bne-    branch_0x802ecd90
    lbzx    r28, r3, r10
    addi    r10, r10, 0x1
    addi    r31, r31, 0x1
    addi    r27, r28, 0x12
    b       branch_0x802ecd94

branch_0x802ecd90:
    addi    r27, r25, 0x2
branch_0x802ecd94:
    subf    r25, r8, r0
    cmpw    r27, r25
    ble-    branch_0x802ecda4
    mr      r27, r25
branch_0x802ecda4:
    cmpwi   r27, 0x0
    mtctr   r27
    add     r29, r4, r8
    ble-    branch_0x802ecdec
branch_0x802ecdb4:
    cmplwi  r6, 0x0
    bne-    branch_0x802ecdd4
    addi    r28, r26, -0x1
    lbzx    r28, r4, r28
    subic.  r5, r5, 0x1
    stb     r28, 0x0(r29)
    bne-    branch_0x802ecdd8
    b       branch_0x802ecdfc

branch_0x802ecdd4:
    addi    r6, r6, -0x1
branch_0x802ecdd8:
    addi    r8, r8, 0x1
    addi    r30, r30, 0x1
    addi    r29, r29, 0x1
    addi    r26, r26, 0x1
    bdnz+      branch_0x802ecdb4
branch_0x802ecdec:
    cmpw    r8, r0
    slwi    r12, r12, 1
    addi    r11, r11, -0x1
    blt+    branch_0x802ecce8
branch_0x802ecdfc:
    lmw     r25, 0x1c(sp)
    addi    sp, sp, 0x38
    blr


.globl decodeSZS__9JKRDecompFPUcPUcUlUl
decodeSZS__9JKRDecompFPUcPUcUlUl: # 0x802ece08
    lwz     r0, 0x4(r3)
    cmplwi  r5, 0x0
    li      r10, 0x0
    add     r0, r4, r0
    subf    r8, r6, r0
    beqlr-    

    lwz     r0, 0x0(r3)
    cmplw   r6, r0
    bgtlr-    

    addi    r12, r3, 0x10
branch_0x802ece30:
    cmpwi   r10, 0x0
    bne-    branch_0x802ece44
    lbz     r11, 0x0(r12)
    li      r10, 0x8
    addi    r12, r12, 0x1
branch_0x802ece44:
    rlwinm. r0, r11, 0, 24, 24
    beq-    branch_0x802ece78
    cmplwi  r6, 0x0
    bne-    branch_0x802ece6c
    lbz     r0, 0x0(r12)
    subic.  r5, r5, 0x1
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bne-    branch_0x802ece70
    blr

branch_0x802ece6c:
    addi    r6, r6, -0x1
branch_0x802ece70:
    addi    r12, r12, 0x1
    b       branch_0x802eced8

branch_0x802ece78:
    lbz     r3, 0x0(r12)
    lbz     r0, 0x1(r12)
    addi    r12, r12, 0x2
    srawi.  r7, r3, 4
    insrwi  r0, r3, 4, 20
    subf    r9, r0, r4
    bne-    branch_0x802ecea4
    lbz     r3, 0x0(r12)
    addi    r12, r12, 0x1
    addi    r3, r3, 0x12
    b       branch_0x802ecea8

branch_0x802ecea4:
    addi    r3, r7, 0x2
branch_0x802ecea8:
    cmplwi  r6, 0x0
    bne-    branch_0x802ecec8
    lbz     r0, -0x1(r9)
    subic.  r5, r5, 0x1
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bne-    branch_0x802ececc
    blr

branch_0x802ecec8:
    addi    r6, r6, -0x1
branch_0x802ececc:
    subic.  r3, r3, 0x1
    addi    r9, r9, 0x1
    bne+    branch_0x802ecea8
branch_0x802eced8:
    cmplw   r4, r8
    slwi    r11, r11, 1
    addi    r10, r10, -0x1
    bne+    branch_0x802ece30
    blr


.globl checkCompressed__9JKRDecompFPUc
checkCompressed__9JKRDecompFPUc: # 0x802eceec
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x59
    bne-    branch_0x802ecf34
    lbz     r0, 0x1(r3)
    cmpwi   r0, 0x61
    bne-    branch_0x802ecf34
    lbz     r0, 0x3(r3)
    cmpwi   r0, 0x30
    bne-    branch_0x802ecf34
    lbz     r0, 0x2(r3)
    cmpwi   r0, 0x79
    bne-    branch_0x802ecf24
    li      r3, 0x1
    blr

branch_0x802ecf24:
    cmpwi   r0, 0x7a
    bne-    branch_0x802ecf34
    li      r3, 0x2
    blr

branch_0x802ecf34:
    li      r3, 0x0
    blr


.globl __ct__16JKRDecompCommandFv
__ct__16JKRDecompCommandFv: # 0x802ecf3c
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x28
    addi    r4, r31, 0x48
    bl      OSInitMessageQueue
    li      r0, 0x0
    stw     r0, 0x14(r31)
    mr      r3, r31
    stw     r0, 0x1c(r31)
    stw     r31, 0x18(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16JKRDecompCommandFv
__dt__16JKRDecompCommandFv: # 0x802ecf8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802ecfb4
    extsh.  r0, r4
    ble-    branch_0x802ecfb4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802ecfb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

