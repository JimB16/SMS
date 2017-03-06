
.globl GXInitLightAttn
GXInitLightAttn: # 0x8035f024
    stfs    f1, 0x10(r3)
    stfs    f2, 0x14(r3)
    stfs    f3, 0x18(r3)
    stfs    f4, 0x1c(r3)
    stfs    f5, 0x20(r3)
    stfs    f6, 0x24(r3)
    blr


.globl GXInitLightAttnA
GXInitLightAttnA: # 0x8035f040
    stfs    f1, 0x10(r3)
    stfs    f2, 0x14(r3)
    stfs    f3, 0x18(r3)
    blr


.globl GXInitLightAttnK
GXInitLightAttnK: # 0x8035f050
    stfs    f1, 0x1c(r3)
    stfs    f2, 0x20(r3)
    stfs    f3, 0x24(r3)
    blr


.globl GXInitLightDistAttn
GXInitLightDistAttn: # 0x8035f060
    lfs     f0, 0xb58(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8035f070
    li      r4, 0x0
branch_0x8035f070:
    lfs     f0, 0xb58(rtoc)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    beq-    branch_0x8035f090
    lfs     f0, 0xb5c(rtoc)
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8035f094
branch_0x8035f090:
    li      r4, 0x0
branch_0x8035f094:
    cmpwi   r4, 0x2
    beq-    branch_0x8035f0d4
    bge-    branch_0x8035f0b0
    cmpwi   r4, 0x0
    beq-    branch_0x8035f114
    bge-    branch_0x8035f0bc
    b       branch_0x8035f114

branch_0x8035f0b0:
    cmpwi   r4, 0x4
    bge-    branch_0x8035f114
    b       branch_0x8035f0f8

branch_0x8035f0bc:
    lfs     f5, 0xb5c(rtoc)
    fmuls   f0, f2, f1
    lfs     f4, 0xb58(rtoc)
    fsubs   f1, f5, f2
    fdivs   f3, f1, f0
    b       branch_0x8035f120

branch_0x8035f0d4:
    lfs     f5, 0xb5c(rtoc)
    fmuls   f4, f2, f1
    lfs     f3, 0xb60(rtoc)
    fsubs   f2, f5, f2
    fmuls   f0, f1, f4
    fmuls   f1, f3, f2
    fdivs   f3, f1, f4
    fdivs   f4, f1, f0
    b       branch_0x8035f120

branch_0x8035f0f8:
    fmuls   f0, f2, f1
    lfs     f5, 0xb5c(rtoc)
    lfs     f3, 0xb58(rtoc)
    fsubs   f2, f5, f2
    fmuls   f0, f1, f0
    fdivs   f4, f2, f0
    b       branch_0x8035f120

branch_0x8035f114:
    lfs     f3, 0xb58(rtoc)
    lfs     f5, 0xb5c(rtoc)
    fmr     f4, f3
branch_0x8035f120:
    stfs    f5, 0x1c(r3)
    stfs    f3, 0x20(r3)
    stfs    f4, 0x24(r3)
    blr


.globl GXInitLightPos
GXInitLightPos: # 0x8035f130
    stfs    f1, 0x28(r3)
    stfs    f2, 0x2c(r3)
    stfs    f3, 0x30(r3)
    blr


.globl GXInitSpecularDir
GXInitSpecularDir: # 0x8035f140
    stwu    sp, -0x20(sp)
    fneg    f0, f1
    fneg    f1, f2
    lfs     f5, 0xb5c(rtoc)
    fmuls   f6, f0, f0
    lfs     f4, 0xb58(rtoc)
    fsubs   f2, f5, f3
    fmuls   f5, f1, f1
    fmuls   f7, f2, f2
    fadds   f5, f6, f5
    fadds   f8, f7, f5
    fcmpo   cr0, f8, f4
    ble-    branch_0x8035f1cc
    frsqrte f5, f8
    lfd     f7, 0xb68(rtoc)
    lfd     f6, 0xb70(rtoc)
    fmul    f4, f5, f5
    fmul    f5, f7, f5
    fmul    f4, f8, f4
    fsub    f4, f6, f4
    fmul    f5, f5, f4
    fmul    f4, f5, f5
    fmul    f5, f7, f5
    fmul    f4, f8, f4
    fsub    f4, f6, f4
    fmul    f5, f5, f4
    fmul    f4, f5, f5
    fmul    f5, f7, f5
    fmul    f4, f8, f4
    fsub    f4, f6, f4
    fmul    f4, f5, f4
    fmul    f4, f8, f4
    frsp    f4, f4
    stfs    f4, 0x18(sp)
    lfs     f8, 0x18(sp)
branch_0x8035f1cc:
    lfs     f4, 0xb5c(rtoc)
    fneg    f3, f3
    fdivs   f6, f4, f8
    fmuls   f5, f0, f6
    fmuls   f4, f1, f6
    fmuls   f2, f2, f6
    stfs    f5, 0x34(r3)
    stfs    f4, 0x38(r3)
    stfs    f2, 0x3c(r3)
    lfs     f4, 0xb78(rtoc)
    fmuls   f2, f4, f0
    fmuls   f1, f4, f1
    fmuls   f0, f4, f3
    stfs    f2, 0x28(r3)
    stfs    f1, 0x2c(r3)
    stfs    f0, 0x30(r3)
    addi    sp, sp, 0x20
    blr


.globl GXInitLightColor
GXInitLightColor: # 0x8035f214
    lbz     r0, 0x1(r4)
    lbz     r5, 0x0(r4)
    lbz     r6, 0x2(r4)
    slwi    r0, r0, 16
    insrwi  r0, r5, 8, 0
    lbz     r4, 0x3(r4)
    insrwi  r0, r6, 8, 16
    or      r0, r4, r0
    stw     r0, 0xc(r3)
    blr


.globl GXGetLightColor
GXGetLightColor: # 0x8035f23c
    lwz     r0, 0xc(r3)
    srwi    r0, r0, 24
    stb     r0, 0x0(r4)
    lwz     r0, 0xc(r3)
    extrwi  r0, r0, 8, 8
    stb     r0, 0x1(r4)
    lwz     r0, 0xc(r3)
    extrwi  r0, r0, 8, 16
    stb     r0, 0x2(r4)
    lwz     r0, 0xc(r3)
    stb     r0, 0x3(r4)
    blr


.globl GXLoadLightObjImm
GXLoadLightObjImm: # 0x8035f26c
    cmpwi   r4, 0x10
    beq-    branch_0x8035f2ec
    bge-    branch_0x8035f2a8
    cmpwi   r4, 0x4
    beq-    branch_0x8035f2dc
    bge-    branch_0x8035f29c
    cmpwi   r4, 0x2
    beq-    branch_0x8035f2d4
    bge-    branch_0x8035f30c
    cmpwi   r4, 0x1
    bge-    branch_0x8035f2cc
    b       branch_0x8035f30c

branch_0x8035f29c:
    cmpwi   r4, 0x8
    beq-    branch_0x8035f2e4
    b       branch_0x8035f30c

branch_0x8035f2a8:
    cmpwi   r4, 0x40
    beq-    branch_0x8035f2fc
    bge-    branch_0x8035f2c0
    cmpwi   r4, 0x20
    beq-    branch_0x8035f2f4
    b       branch_0x8035f30c

branch_0x8035f2c0:
    cmpwi   r4, 0x80
    beq-    branch_0x8035f304
    b       branch_0x8035f30c

branch_0x8035f2cc:
    li      r0, 0x0
    b       branch_0x8035f310

branch_0x8035f2d4:
    li      r0, 0x1
    b       branch_0x8035f310

branch_0x8035f2dc:
    li      r0, 0x2
    b       branch_0x8035f310

branch_0x8035f2e4:
    li      r0, 0x3
    b       branch_0x8035f310

branch_0x8035f2ec:
    li      r0, 0x4
    b       branch_0x8035f310

branch_0x8035f2f4:
    li      r0, 0x5
    b       branch_0x8035f310

branch_0x8035f2fc:
    li      r0, 0x6
    b       branch_0x8035f310

branch_0x8035f304:
    li      r0, 0x7
    b       branch_0x8035f310

branch_0x8035f30c:
    li      r0, 0x0
branch_0x8035f310:
    slwi    r5, r0, 4
    lwz     r4, -0x72f8(r13)
    addi    r0, r5, 0x600
    li      r5, 0x10
    lis     r6, 0xcc01
    stb     r5, -0x8000(r6)
    oris    r0, r0, 0xf
    li      r5, 0x0
    stw     r0, -0x8000(r6)
    li      r0, 0x1
    stw     r5, -0x8000(r6)
    stw     r5, -0x8000(r6)
    stw     r5, -0x8000(r6)
    lwz     r5, 0xc(r3)
    stw     r5, -0x8000(r6)
    lfs     f0, 0x10(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x14(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x18(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x1c(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x20(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x24(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x28(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x2c(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x30(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x34(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x38(r3)
    stfs    f0, -0x8000(r6)
    lfs     f0, 0x3c(r3)
    stfs    f0, -0x8000(r6)
    sth     r0, 0x2(r4)
    blr


.globl GXSetChanAmbColor
GXSetChanAmbColor: # 0x8035f3b4
    cmpwi   r3, 0x3
    beq-    branch_0x8035f468
    bge-    branch_0x8035f3d8
    cmpwi   r3, 0x1
    beq-    branch_0x8035f41c
    bge-    branch_0x8035f450
    cmpwi   r3, 0x0
    bge-    branch_0x8035f3e8
    blr

branch_0x8035f3d8:
    cmpwi   r3, 0x5
    beq-    branch_0x8035f4b0
    bgelr-    

    b       branch_0x8035f480

branch_0x8035f3e8:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x0
    lbz     r6, 0x2(r4)
    lwz     r7, 0xa8(r5)
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    clrlwi  r7, r7, 24
    insrwi  r7, r6, 8, 16
    slwi    r4, r5, 16
    insrwi  r4, r7, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f4e4

branch_0x8035f41c:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x1
    lbz     r6, 0x2(r4)
    lwz     r7, 0xac(r5)
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    clrlwi  r7, r7, 24
    insrwi  r7, r6, 8, 16
    slwi    r4, r5, 16
    insrwi  r4, r7, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f4e4

branch_0x8035f450:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x0
    lbz     r7, 0x3(r4)
    lwz     r0, 0xa8(r5)
    rlwimi  r7, r0, 0, 0, 23
    b       branch_0x8035f4e4

branch_0x8035f468:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x1
    lbz     r7, 0x3(r4)
    lwz     r0, 0xac(r5)
    rlwimi  r7, r0, 0, 0, 23
    b       branch_0x8035f4e4

branch_0x8035f480:
    lbz     r0, 0x2(r4)
    li      r3, 0x0
    lbz     r7, 0x3(r4)
    slwi    r6, r0, 8
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    insrwi  r6, r7, 8, 24
    slwi    r4, r5, 16
    insrwi  r4, r6, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f4e4

branch_0x8035f4b0:
    lbz     r0, 0x2(r4)
    li      r3, 0x1
    lbz     r7, 0x3(r4)
    slwi    r6, r0, 8
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    insrwi  r6, r7, 8, 24
    slwi    r4, r5, 16
    insrwi  r4, r6, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f4e4


.incbin "./baserom/code/Text_0x80005600.bin", 0x359ee0, 0x8035f4e4 - 0x8035f4e0
branch_0x8035f4e4:
    li      r0, 0x10
    lwz     r4, -0x72f8(r13)
    lis     r6, 0xcc01
    stb     r0, -0x8000(r6)
    addi    r0, r3, 0x100a
    li      r5, 0x1
    stw     r0, -0x8000(r6)
    slwi    r0, r3, 2
    stw     r7, -0x8000(r6)
    sth     r5, 0x2(r4)
    lwz     r3, -0x72f8(r13)
    add     r3, r3, r0
    stw     r7, 0xa8(r3)
    blr


.globl GXSetChanMatColor
GXSetChanMatColor: # 0x8035f51c
    cmpwi   r3, 0x3
    beq-    branch_0x8035f5d0
    bge-    branch_0x8035f540
    cmpwi   r3, 0x1
    beq-    branch_0x8035f584
    bge-    branch_0x8035f5b8
    cmpwi   r3, 0x0
    bge-    branch_0x8035f550
    blr

branch_0x8035f540:
    cmpwi   r3, 0x5
    beq-    branch_0x8035f618
    bgelr-    

    b       branch_0x8035f5e8

branch_0x8035f550:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x0
    lbz     r6, 0x2(r4)
    lwz     r7, 0xb0(r5)
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    clrlwi  r7, r7, 24
    insrwi  r7, r6, 8, 16
    slwi    r4, r5, 16
    insrwi  r4, r7, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f64c

branch_0x8035f584:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x1
    lbz     r6, 0x2(r4)
    lwz     r7, 0xb4(r5)
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    clrlwi  r7, r7, 24
    insrwi  r7, r6, 8, 16
    slwi    r4, r5, 16
    insrwi  r4, r7, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f64c

branch_0x8035f5b8:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x0
    lbz     r7, 0x3(r4)
    lwz     r0, 0xb0(r5)
    rlwimi  r7, r0, 0, 0, 23
    b       branch_0x8035f64c

branch_0x8035f5d0:
    lwz     r5, -0x72f8(r13)
    li      r3, 0x1
    lbz     r7, 0x3(r4)
    lwz     r0, 0xb4(r5)
    rlwimi  r7, r0, 0, 0, 23
    b       branch_0x8035f64c

branch_0x8035f5e8:
    lbz     r0, 0x2(r4)
    li      r3, 0x0
    lbz     r7, 0x3(r4)
    slwi    r6, r0, 8
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    insrwi  r6, r7, 8, 24
    slwi    r4, r5, 16
    insrwi  r4, r6, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f64c

branch_0x8035f618:
    lbz     r0, 0x2(r4)
    li      r3, 0x1
    lbz     r7, 0x3(r4)
    slwi    r6, r0, 8
    lbz     r5, 0x1(r4)
    lbz     r0, 0x0(r4)
    insrwi  r6, r7, 8, 24
    slwi    r4, r5, 16
    insrwi  r4, r6, 16, 16
    slwi    r7, r0, 24
    insrwi  r7, r4, 24, 8
    b       branch_0x8035f64c


.incbin "./baserom/code/Text_0x80005600.bin", 0x35a048, 0x8035f64c - 0x8035f648
branch_0x8035f64c:
    li      r0, 0x10
    lwz     r4, -0x72f8(r13)
    lis     r6, 0xcc01
    stb     r0, -0x8000(r6)
    addi    r0, r3, 0x100c
    li      r5, 0x1
    stw     r0, -0x8000(r6)
    slwi    r0, r3, 2
    stw     r7, -0x8000(r6)
    sth     r5, 0x2(r4)
    lwz     r3, -0x72f8(r13)
    add     r3, r3, r0
    stw     r7, 0xb0(r3)
    blr


.globl GXSetNumChans
GXSetNumChans: # 0x8035f684
    lwz     r4, -0x72f8(r13)
    clrlwi  r7, r3, 24
    clrlslwi  r0, r3, 24, 4
    addi    r6, r4, 0x204
    lwz     r5, 0x204(r4)
    li      r3, 0x10
    lis     r4, 0xcc01
    rlwinm  r5, r5, 0, 28, 24
    or      r0, r5, r0
    stw     r0, 0x0(r6)
    li      r0, 0x1009
    stb     r3, -0x8000(r4)
    lwz     r3, -0x72f8(r13)
    stw     r0, -0x8000(r4)
    stw     r7, -0x8000(r4)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetChanCtrl
GXSetChanCtrl: # 0x8035f6d0
    stwu    sp, -0x38(sp)
    cmpwi   r3, 0x4
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    bne-    branch_0x8035f6f4
    li      r11, 0x0
    b       branch_0x8035f708

branch_0x8035f6f4:
    cmpwi   r3, 0x5
    bne-    branch_0x8035f704
    li      r11, 0x1
    b       branch_0x8035f708

branch_0x8035f704:
    mr      r11, r3
branch_0x8035f708:
    clrlslwi  r4, r4, 24, 1
    or      r10, r4, r6
    clrlwi  r0, r7, 31
    neg     r6, r0
    subic   r4, r6, 0x1
    rlwinm  r0, r7, 0, 30, 30
    neg     r12, r0
    subfe   r6, r4, r6
    subic   r4, r12, 0x1
    subfe   r4, r4, r12
    rlwinm  r0, r7, 0, 29, 29
    neg     r28, r0
    subic   r0, r28, 0x1
    rlwinm  r12, r7, 0, 28, 28
    subfe   r0, r0, r28
    neg     r29, r12
    subic   r28, r29, 0x1
    rlwinm  r12, r7, 0, 27, 27
    neg     r30, r12
    subfe   r28, r28, r29
    subic   r29, r30, 0x1
    rlwinm  r12, r7, 0, 26, 26
    neg     r31, r12
    subfe   r29, r29, r30
    subic   r30, r31, 0x1
    rlwinm  r12, r7, 0, 25, 25
    subfe   r30, r30, r31
    neg     r31, r12
    subic   r12, r31, 0x1
    rlwinm  r10, r10, 0, 26, 24
    slwi    r5, r5, 6
    or      r5, r10, r5
    rlwinm  r10, r5, 0, 30, 28
    slwi    r5, r6, 2
    or      r5, r10, r5
    rlwinm  r5, r5, 0, 29, 27
    slwi    r4, r4, 3
    or      r4, r5, r4
    rlwinm  r4, r4, 0, 28, 26
    slwi    r0, r0, 4
    or      r0, r4, r0
    rlwinm  r4, r0, 0, 27, 25
    slwi    r0, r28, 5
    or      r0, r4, r0
    rlwinm  r4, r0, 0, 21, 19
    slwi    r0, r29, 11
    or      r0, r4, r0
    rlwinm  r4, r0, 0, 20, 18
    slwi    r0, r30, 12
    or      r0, r4, r0
    rlwinm  r7, r7, 0, 24, 24
    subfe   r31, r12, r31
    neg     r12, r7
    subic   r7, r12, 0x1
    rlwinm  r4, r0, 0, 19, 17
    slwi    r0, r31, 13
    or      r0, r4, r0
    subfe   r7, r7, r12
    rlwinm  r4, r0, 0, 18, 16
    slwi    r0, r7, 14
    cmpwi   r9, 0x0
    or      r6, r4, r0
    bne-    branch_0x8035f808
    li      r8, 0x0
branch_0x8035f808:
    subfic  r5, r9, 0x2
    lwz     r4, -0x72f8(r13)
    subic   r0, r5, 0x1
    subfe   r10, r0, r5
    neg     r5, r9
    subic   r0, r5, 0x1
    subfe   r7, r0, r5
    rlwinm  r5, r6, 0, 25, 22
    slwi    r0, r8, 7
    or      r8, r5, r0
    li      r6, 0x10
    lis     r5, 0xcc01
    stb     r6, -0x8000(r5)
    addi    r0, r11, 0x100e
    rlwinm  r9, r8, 0, 23, 21
    slwi    r8, r10, 9
    stw     r0, -0x8000(r5)
    or      r0, r9, r8
    rlwinm  r8, r0, 0, 22, 20
    slwi    r0, r7, 10
    or      r7, r8, r0
    stw     r7, -0x8000(r5)
    li      r0, 0x1
    cmpwi   r3, 0x4
    sth     r0, 0x2(r4)
    bne-    branch_0x8035f884
    stb     r6, -0x8000(r5)
    li      r0, 0x1010
    stw     r0, -0x8000(r5)
    stw     r7, -0x8000(r5)
    b       branch_0x8035f89c

branch_0x8035f884:
    cmpwi   r3, 0x5
    bne-    branch_0x8035f89c
    stb     r6, -0x8000(r5)
    li      r0, 0x1011
    stw     r0, -0x8000(r5)
    stw     r7, -0x8000(r5)
branch_0x8035f89c:
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr

