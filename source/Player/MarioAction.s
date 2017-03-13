
.globl actnMain__6TMarioFv
actnMain__6TMarioFv: # 0x8023f6b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r5, 0x7c(r3)
    li      r3, 0x0
    cmpwi   r5, 0x383
    beq-    branch_0x8023f71c
    bge-    branch_0x8023f704
    lis     r4, 0x8000
    addi    r0, r4, 0x588
    cmpw    r5, r0
    beq-    branch_0x8023f8bc
    bge-    branch_0x8023f8fc
    addi    r0, r4, 0x387
    cmpw    r5, r0
    beq-    branch_0x8023f838
    b       branch_0x8023f8fc

branch_0x8023f704:
    cmpwi   r5, 0x386
    beq-    branch_0x8023f7a0
    bge-    branch_0x8023f8fc
    cmpwi   r5, 0x385
    bge-    branch_0x8023f8fc
    b       branch_0x8023f728

branch_0x8023f71c:
    mr      r3, r31
    bl      taking__6TMarioFv
    b       branch_0x8023f8fc

branch_0x8023f728:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f748
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f748:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8023f784
    lfs     f1, -0x14b0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xc3
    bl      setAnimation__6TMarioFif
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023f8fc

branch_0x8023f784:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r5, r4, 0x201
    li      r4, 0x110
    bl      stopCommon__6TMarioFii
    li      r3, 0x0
    b       branch_0x8023f8fc

branch_0x8023f7a0:
    lwz     r3, 0x74(r31)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8023f7dc
    mr      r3, r31
    bl      considerRotateJumpStart__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8023f7c4
    li      r3, 0x1
    b       branch_0x8023f8fc

branch_0x8023f7c4:
    lis     r4, 0x200
    addi    r3, r31, 0x0
    addi    r4, r4, 0x880
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f7dc:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x8023f7fc
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023f8fc

branch_0x8023f7fc:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8023f81c
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023f8fc

branch_0x8023f81c:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r5, r4, 0x201
    li      r4, 0x5a
    bl      stopCommon__6TMarioFii
    li      r3, 0x0
    b       branch_0x8023f8fc

branch_0x8023f838:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f858
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f858:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r5, r4, 0x201
    li      r4, 0x6e
    bl      stopCommon__6TMarioFii
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023f8b4
    lwz     r3, 0x3a8(r31)
    lfs     f1, -0x14ac(rtoc)
    lwz     r3, 0xc(r3)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8023f8b4
    lwz     r3, 0x6c(r31)
    addi    r4, r31, 0x0
    li      r5, 0x6
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x8023f8b4:
    li      r3, 0x0
    b       branch_0x8023f8fc

branch_0x8023f8bc:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f8dc
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023f8fc

branch_0x8023f8dc:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r5, r4, 0x201
    li      r4, 0x65
    bl      stopCommon__6TMarioFii
    mr      r3, r31
    bl      checkThrowObject__6TMarioFv
    li      r3, 0x0
branch_0x8023f8fc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl taking__6TMarioFv
taking__6TMarioFv: # 0x8023f910
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8023f944
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    bl      changePlayerDropping__6TMarioFUlUl
    b       branch_0x8023fa20

branch_0x8023f944:
    lfs     f1, -0x14b0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x6b
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x384(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023f9d8
    lwz     r3, 0x3a8(r31)
    lfs     f1, -0x14a8(rtoc)
    lwz     r3, 0xc(r3)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8023f9d8
    lwz     r3, 0x384(r31)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8023f9b4
    addi    r3, r31, 0x0
    li      r4, SOUND_788f
    bl      startVoice__6TMarioFUl
    lwz     r0, 0x384(r31)
    stw     r0, 0x6c(r31)
    b       branch_0x8023f9d0

branch_0x8023f9b4:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023fa20

branch_0x8023f9d0:
    li      r0, 0x0
    stw     r0, 0x384(r31)
branch_0x8023f9d8:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8023fa14
    li      r0, 0x2
    stw     r0, 0x380(r31)
    li      r0, 0x0
    lis     r4, 0xc40
    sth     r0, 0x37e(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8023fa20

branch_0x8023fa14:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    li      r3, 0x0
branch_0x8023fa20:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __sinit_MarioAction_cpp
__sinit_MarioAction_cpp: # 0x8023fa34
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4be0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fa7c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8023fa7c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8023faac
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8023faac:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fadc
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8023fadc:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb0c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8023fb0c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb3c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8023fb3c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb6c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8023fb6c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fb9c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8023fb9c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fbcc
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8023fbcc:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fbfc
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8023fbfc:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fc2c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8023fc2c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fc5c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8023fc5c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fc8c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8023fc8c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fcbc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8023fcbc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fcec
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8023fcec:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8023fd1c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8023fd1c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

