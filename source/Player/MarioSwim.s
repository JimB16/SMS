
.globl swimMain__6TMarioFv
swimMain__6TMarioFv: # 0x802725d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80272608
    li      r0, 0x1
    b       branch_0x8027260c

branch_0x80272608:
    li      r0, 0x0
branch_0x8027260c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027262c
    lis     r4, unk_000224e1@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000224e1@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8027262c:
    mr      r3, r31
    bl      checkSwimJump__6TMarioFv
    cmpwi   r3, 0x1
    bne-    branch_0x80272644
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272644:
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xad8(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802726f0
    lwz     r3, 0xd8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802726f0
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x10a
    bne-    branch_0x80272674
    li      r0, 0x1
    b       branch_0x80272678

branch_0x80272674:
    li      r0, 0x0
branch_0x80272678:
    clrlwi. r0, r0, 24
    beq-    branch_0x802726f0
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    lha     r0, 0x96(r31)
    extsh   r3, r3
    subf    r0, r3, r0
    extsh   r0, r0
    cmpwi   r0, -0x5555
    blt-    branch_0x802726b0
    cmpwi   r0, 0x5555
    ble-    branch_0x802726f0
branch_0x802726b0:
    addis   r3, r3, 0x1
    addi    r0, r3, -0x8000
    sth     r0, 0x96(r31)
    lis     r4, unk_3000036b@h
    addi    r3, r31, 0x0
    lha     r0, 0x96(r31)
    addi    r4, r4, unk_3000036b@l
    li      r5, 0x0
    sth     r0, 0x9a(r31)
    li      r6, 0x0
    lfs     f1, 0x14(r31)
    lfs     f0, -0xad4(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802726f4

branch_0x802726f0:
    li      r3, 0x0
branch_0x802726f4:
    lfs     f2, 0xf0(r31)
    lfs     f1, 0x1168(r31)
    lfs     f0, 0x14(r31)
    fsubs   f1, f2, f1
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x80272714
    stfs    f1, 0x14(r31)
branch_0x80272714:
    lfs     f0, 0xf0(r31)
    stfs    f0, 0x2ac(r31)
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80272730
    li      r0, 0x1
    b       branch_0x80272734

branch_0x80272730:
    li      r0, 0x0
branch_0x80272734:
    clrlwi. r0, r0, 24
    beq-    branch_0x80272768
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x24d4
    beq-    branch_0x80272768
    cmplwi  r0, 0x24d5
    beq-    branch_0x80272768
    addi    r3, r31, 0x0
    li      r4, 0x24d4
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272cb4

branch_0x80272768:
    lwz     r4, 0x7c(r31)
    cmpwi   r4, 0x24d7
    beq-    branch_0x80272a64
    bge-    branch_0x802727ac
    cmpwi   r4, 0x24d3
    beq-    branch_0x802728f0
    bge-    branch_0x8027279c
    cmpwi   r4, 0x22d2
    beq-    branch_0x80272854
    bge-    branch_0x80272cb4
    cmpwi   r4, 0x22d1
    bge-    branch_0x802727e8
    b       branch_0x80272cb4

branch_0x8027279c:
    cmpwi   r4, 0x24d5
    beq-    branch_0x802729e8
    bge-    branch_0x802729f4
    b       branch_0x8027295c

branch_0x802727ac:
    lis     r30, unk_000224e0@h
    addi    r29, r30, unk_000224e0@l
    cmpw    r4, r29
    beq-    branch_0x80272c70
    bge-    branch_0x802727d8
    cmpwi   r4, 0x24da
    beq-    branch_0x80272c28
    bge-    branch_0x80272cb4
    cmpwi   r4, 0x24d9
    bge-    branch_0x80272b64
    b       branch_0x80272ad4

branch_0x802727d8:
    addi    r0, r30, 0x24e2
    cmpw    r4, r0
    bge-    branch_0x80272cb4
    b       branch_0x80272c94

branch_0x802727e8:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80272804
    li      r0, 0x1
    b       branch_0x80272808

branch_0x80272804:
    li      r0, 0x0
branch_0x80272808:
    clrlwi. r0, r0, 24
    bne-    branch_0x80272818
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x80272818:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x115
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8027284c
    addi    r3, r31, 0x0
    li      r4, 0x22d2
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8027284c:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272854:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x116
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x74(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80272888
    addi    r3, r31, 0x0
    li      r4, 0x24d3
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272cb4

branch_0x80272888:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x802728a4
    li      r0, 0x1
    b       branch_0x802728a8

branch_0x802728a4:
    li      r0, 0x0
branch_0x802728a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x802728b8
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x802728b8:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x116
    bl      setAnimation__6TMarioFif
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x1950
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802728e8
    li      r3, 0x1950
    li      r4, 0x0
    bl      startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
branch_0x802728e8:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x802728f0:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x117
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80272924
    addi    r3, r31, 0x0
    li      r4, 0x24d4
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80272924:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80272940
    li      r0, 0x1
    b       branch_0x80272944

branch_0x80272940:
    li      r0, 0x0
branch_0x80272944:
    clrlwi. r0, r0, 24
    bne-    branch_0x80272954
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x80272954:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x8027295c:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x118
    bl      setAnimation__6TMarioFif
    lfs     f1, 0xb0(r31)
    mr      r3, r31
    lfs     f0, 0x11cc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x11e0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r31)
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802729b0
    addi    r3, r31, 0x0
    li      r4, 0x24d5
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802729b0:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x802729cc
    li      r0, 0x1
    b       branch_0x802729d0

branch_0x802729cc:
    li      r0, 0x0
branch_0x802729d0:
    clrlwi. r0, r0, 24
    bne-    branch_0x802729e0
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x802729e0:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x802729e8:
    mr      r3, r31
    bl      swimPaddle__6TMarioFv
    b       branch_0x80272cb4

branch_0x802729f4:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x11a
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80272a2c
    addi    r3, r31, 0x0
    li      r4, 0x24d7
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272cb4

branch_0x80272a2c:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80272a48
    li      r0, 0x1
    b       branch_0x80272a4c

branch_0x80272a48:
    li      r0, 0x0
branch_0x80272a4c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80272a5c
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x80272a5c:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272a64:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x11b
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80272a9c
    addi    r3, r31, 0x0
    li      r4, 0x22d2
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272cb4

branch_0x80272a9c:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80272ab8
    li      r0, 0x1
    b       branch_0x80272abc

branch_0x80272ab8:
    li      r0, 0x0
branch_0x80272abc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80272acc
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x80272acc:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272ad4:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x11c
    bl      setAnimation__6TMarioFif
    lfs     f1, 0xa8(r31)
    mr      r3, r31
    lfs     f0, 0x11f4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r31)
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80272b2c
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x116
    bl      setAnimation__6TMarioFif
    addi    r3, r31, 0x0
    li      r4, 0x22d2
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272cb4

branch_0x80272b2c:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80272b48
    li      r0, 0x1
    b       branch_0x80272b4c

branch_0x80272b48:
    li      r0, 0x0
branch_0x80272b4c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80272b5c
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x80272b5c:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272b64:
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x128
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xacc(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80272b94
    lha     r0, 0x1230(r31)
    sth     r0, 0x366(r31)
branch_0x80272b94:
    lha     r3, 0x366(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80272bb8
    addi    r0, r3, -0x1
    sth     r0, 0x366(r31)
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x1258(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(r31)
branch_0x80272bb8:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80272bf0
    lfs     f1, -0xad0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x116
    bl      setAnimation__6TMarioFif
    addi    r3, r31, 0x0
    li      r4, 0x24d6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272cb4

branch_0x80272bf0:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80272c0c
    li      r0, 0x1
    b       branch_0x80272c10

branch_0x80272c0c:
    li      r0, 0x0
branch_0x80272c10:
    clrlwi. r0, r0, 24
    bne-    branch_0x80272c20
    li      r3, 0x1
    b       branch_0x80272cb4

branch_0x80272c20:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272c28:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lfs     f1, -0xad8(r2)
    addi    r3, r31, 0x0
    li      r4, 0x24da
    li      r5, 0x12a
    bl      jumpingDemoCommon__6TMarioFUlif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80272c68
    addi    r3, r31, 0x0
    li      r4, 0x22d2
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80272c68:
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272c70:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lfs     f1, -0xad8(r2)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x10c
    bl      jumpingDemoCommon__6TMarioFUlif
    li      r3, 0x0
    b       branch_0x80272cb4

branch_0x80272c94:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lfs     f1, -0xad8(r2)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x24e1
    li      r5, 0x12b
    bl      jumpingDemoCommon__6TMarioFUlif
    li      r3, 0x0
branch_0x80272cb4:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl swimPaddle__6TMarioFv
swimPaddle__6TMarioFv: # 0x80272cd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    lfs     f1, -0xac8(r2)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80272cfc
    li      r0, 0x1
    b       branch_0x80272d00

branch_0x80272cfc:
    li      r0, 0x0
branch_0x80272d00:
    clrlwi. r0, r0, 24
    beq-    branch_0x80272d0c
    lfs     f1, -0xac4(r2)
branch_0x80272d0c:
    addi    r3, r31, 0x0
    li      r4, 0x119
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80272d2c
    li      r0, 0x1
    b       branch_0x80272d30

branch_0x80272d2c:
    li      r0, 0x0
branch_0x80272d30:
    clrlwi. r0, r0, 24
    beq-    branch_0x80272d5c
    lfs     f1, 0x5b4(r31)
    mr      r3, r31
    bl      setPlayerVelocity__6TMarioFf
    addi    r3, r31, 0x0
    li      r4, 0x19
    bl      startSoundActor__6TMarioFUl
    addi    r3, r31, 0x0
    li      r4, 0x117d
    bl      startSoundActor__6TMarioFUl
branch_0x80272d5c:
    lfs     f1, -0xad8(r2)
    lfs     f0, 0x8c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80272d80
    addi    r3, r31, 0x0
    li      r4, 0x24d6
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80272d80:
    mr      r3, r31
    bl      doSwimming__6TMarioFv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80272d9c
    li      r0, 0x1
    b       branch_0x80272da0

branch_0x80272d9c:
    li      r0, 0x0
branch_0x80272da0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80272db0
    li      r3, 0x1
    b       branch_0x80272dec

branch_0x80272db0:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80272dc4
    li      r0, 0x1
    b       branch_0x80272dc8

branch_0x80272dc4:
    li      r0, 0x0
branch_0x80272dc8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80272de8
    mr      r3, r31
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80272de8
    mr      r3, r31
    bl      surfingEffect__6TMarioFv
branch_0x80272de8:
    li      r3, 0x0
branch_0x80272dec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl checkSwimJump__6TMarioFv
checkSwimJump__6TMarioFv: # 0x80272e00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80272f58
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80272e34
    li      r0, 0x1
    b       branch_0x80272e38

branch_0x80272e34:
    li      r0, 0x0
branch_0x80272e38:
    clrlwi. r0, r0, 24
    beq-    branch_0x80272e80
    mr      r3, r31
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80272e80
    lfs     f1, -0xad0(r2)
    mr      r3, r31
    lfs     f0, 0xf0(r31)
    li      r4, 0x828
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    bl      startSoundActor__6TMarioFUl
    addi    r3, r31, 0x0
    li      r4, 0x888
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x80272f5c

branch_0x80272e80:
    lfs     f1, 0xf0(r31)
    lfs     f2, 0x1140(r31)
    lfs     f0, 0x14(r31)
    fsubs   f2, f1, f2
    fcmpo   cr0, f2, f0
    bge-    branch_0x80272f18
    lfs     f2, -0xad8(r2)
    li      r4, 0x0
    lfs     f0, 0x8c(r31)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80272eb0
    li      r4, 0x1
branch_0x80272eb0:
    lwz     r0, 0xd8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80272ec0
    li      r4, 0x1
branch_0x80272ec0:
    lha     r3, 0x90(r31)
    lha     r0, 0x9a(r31)
    subf    r0, r3, r0
    extsh   r0, r0
    cmpwi   r0, -0x5555
    blt-    branch_0x80272ee0
    cmpwi   r0, 0x5555
    ble-    branch_0x80272ee4
branch_0x80272ee0:
    li      r4, 0x1
branch_0x80272ee4:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80272f18
    mr      r3, r31
    bl      inOutWaterEffect__6TMarioFf
    lis     r4, unk_02000880@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_02000880@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80272f5c

branch_0x80272f18:
    lfs     f1, -0xad8(r2)
    lfs     f0, 0x8c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80272f40
    addi    r3, r31, 0x0
    li      r4, 0x24d8
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272f5c

branch_0x80272f40:
    addi    r3, r31, 0x0
    li      r4, 0x24d4
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80272f5c

branch_0x80272f58:
    li      r3, 0x0
branch_0x80272f5c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl doSwimming__6TMarioFv
doSwimming__6TMarioFv: # 0x80272f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80272fa8
    addi    r3, r31, 0x0
    li      r4, 0x24d9
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802732e0

branch_0x80272fa8:
    lfs     f2, 0xec(r31)
    lfs     f1, 0x1154(r31)
    lfs     f0, 0xf0(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80272fdc
    lis     r4, unk_0c400201@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_0c400201@l
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802732e0

branch_0x80272fdc:
    lfs     f1, 0x8c(r31)
    lfs     f0, 0x1078(r31)
    lfs     f2, -0xac0(r2)
    fmuls   f1, f1, f0
    lfs     f0, 0xb0(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x108c(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8027301c
    cmplwi  r0, 0x1
    bne-    branch_0x80273024
branch_0x8027301c:
    li      r0, 0x1
    b       branch_0x80273028

branch_0x80273024:
    li      r0, 0x0
branch_0x80273028:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027306c
    lha     r4, 0x10c8(r31)
    lis     r3, 0x4330
    lha     r0, 0x10dc(r31)
    xoris   r4, r4, 0x8000
    lfd     f2, -0xaa8(r2)
    xoris   r0, r0, 0x8000
    stw     r4, 0x5c(sp)
    stw     r0, 0x54(sp)
    stw     r3, 0x58(sp)
    stw     r3, 0x50(sp)
    lfd     f1, 0x58(sp)
    lfd     f0, 0x50(sp)
    fsubs   f3, f1, f2
    fsubs   f0, f0, f2
    b       branch_0x802730a4

branch_0x8027306c:
    lha     r4, 0x10a0(r31)
    lis     r3, 0x4330
    lha     r0, 0x10b4(r31)
    xoris   r4, r4, 0x8000
    lfd     f2, -0xaa8(r2)
    xoris   r0, r0, 0x8000
    stw     r4, 0x54(sp)
    stw     r0, 0x5c(sp)
    stw     r3, 0x50(sp)
    stw     r3, 0x58(sp)
    lfd     f1, 0x50(sp)
    lfd     f0, 0x58(sp)
    fsubs   f3, f1, f2
    fsubs   f0, f0, f2
branch_0x802730a4:
    fsubs   f0, f0, f3
    lfs     f1, 0xb0(r31)
    lfs     f2, -0xac0(r2)
    li      r4, 0x0
    lha     r3, 0x96(r31)
    fmuls   f0, f1, f0
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    fmadds  f0, f2, f0, f3
    extsh   r3, r0
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    extsh   r5, r0
    addi    r6, r5, 0x0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
    mr      r3, r31
    lfs     f1, 0xb0(r31)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x10f0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(r31)
    lfs     f2, 0xf0(r31)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x1168(r31)
    fsubs   f2, f2, f0
    lfs     f0, -0xad8(r2)
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80273130
    fmr     f1, f0
branch_0x80273130:
    lfs     f0, -0xad0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80273140
    fmr     f1, f0
branch_0x80273140:
    lhz     r0, 0xfa(r31)
    cmplwi  r0, 0x107
    beq-    branch_0x80273160
    cmplwi  r0, 0x106
    beq-    branch_0x80273160
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x22d2
    bne-    branch_0x8027316c
branch_0x80273160:
    lfs     f0, 0x1104(r31)
    fmuls   f1, f1, f0
    b       branch_0x80273174

branch_0x8027316c:
    lfs     f0, 0x1118(r31)
    fmuls   f1, f1, f0
branch_0x80273174:
    lfs     f0, 0xa8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    fadds   f0, f0, f1
    stfs    f0, 0xa8(r31)
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x112c(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r31)
    bl      jumpProcess__6TMarioFi
    cmpwi   r3, 0x2
    beq-    branch_0x802731ac
    bge-    branch_0x80273254
    b       branch_0x80273254

branch_0x802731ac:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x802731c0
    li      r0, 0x1
    b       branch_0x802731c4

branch_0x802731c0:
    li      r0, 0x0
branch_0x802731c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80273240
    mr      r3, r31
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80273208
    lfs     f0, 0xb0(r31)
    mr      r3, r31
    lfs     f1, -0xabc(r2)
    li      r4, 0x24da
    fneg    f0, f0
    li      r5, 0x0
    li      r6, 0x1
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80273254

branch_0x80273208:
    lis     r4, unk_000208b3@h
    addi    r3, r31, 0x0
    addi    r4, r4, unk_000208b3@l
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f0, 0xb0(r31)
    lfs     f1, -0xabc(r2)
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lfs     f0, -0xab8(r2)
    stfs    f0, 0xa8(r31)
    b       branch_0x80273254

branch_0x80273240:
    mr      r3, r31
    lfs     f1, -0xad8(r2)
    bl      setPlayerVelocity__6TMarioFf
    lfs     f0, -0xad8(r2)
    stfs    f0, 0xa8(r31)
branch_0x80273254:
    lfs     f0, -0xab4(r2)
    lfs     f2, 0xec(r31)
    lfs     f1, 0xf0(r31)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x802732c4
    lfs     f0, -0xad4(r2)
    lfs     f1, 0x14(r31)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802732c4
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x22d2
    beq-    branch_0x802732c4
    lwz     r3, 0x10(r31)
    mr      r7, r31
    lwz     r0, 0x14(r31)
    addi    r5, r31, 0x1a8
    li      r4, 0x11e
    stw     r3, 0x1a8(r31)
    li      r6, 0x1
    stw     r0, 0x1ac(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1b0(r31)
    lfs     f0, 0xec(r31)
    stfs    f0, 0x1ac(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x802732c4:
    lfs     f1, -0xab0(r2)
    lfs     f0, 0xec(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x802732e0
    stfs    f0, 0x14(r31)
branch_0x802732e0:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __sinit_MarioSwim_cpp
__sinit_MarioSwim_cpp: # 0x802732f4
    mflr    r0
    lis     r3, unk_803fc130@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fc130@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8027333c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8027333c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8027336c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8027336c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8027339c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8027339c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802733cc
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x802733cc:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802733fc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x802733fc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8027342c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8027342c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8027345c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8027345c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8027348c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8027348c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802734bc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x802734bc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802734ec
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x802734ec:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8027351c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8027351c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8027354c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8027354c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8027357c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8027357c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802735ac
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x802735ac:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802735dc
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x802735dc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

