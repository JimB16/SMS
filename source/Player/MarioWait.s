
.globl waitMain__6TMarioFv
waitMain__6TMarioFv: # 0x80264cdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    li      r31, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x3c(sp)
    bl      checkEnforceJump__6TMarioFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc4(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      setNormalAttackArea__6TMarioFv
    lwz     r5, 0x6c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80264e2c
    lwz     r0, 0x74(r30)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80264d3c
    li      r0, 0x1
    b       branch_0x80264d40

branch_0x80264d3c:
    li      r0, 0x0
branch_0x80264d40:
    clrlwi. r0, r0, 24
    beq-    branch_0x80264e2c
    lis     r4, 0x8000
    lwz     r3, 0x4c(r5)
    addi    r0, r4, 0x1
    cmpw    r3, r0
    beq-    branch_0x80264d60
    b       branch_0x80264d78

branch_0x80264d60:
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_588
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80264e2c

branch_0x80264d78:
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfs     f3, -0xcb8(rtoc)
    lfsx    f2, r3, r0
    lfs     f1, 0x10(r30)
    lfsx    f6, r4, r0
    fmadds  f1, f3, f2, f1
    lfs     f0, 0x18(r30)
    lfs     f5, -0xcb4(rtoc)
    lfs     f2, 0x14(r30)
    fmadds  f3, f3, f6, f0
    fadds   f2, f5, f2
    lfs     f4, 0x58(r5)
    lwz     r3, gpMap(r13)
    bl      isTouchedOneWall__4TMapCFffff
    clrlwi. r0, r3, 24
    beq-    branch_0x80264dd4
    li      r0, 0x0
    b       branch_0x80264e0c

branch_0x80264dd4:
    lfs     f1, -0xcb4(rtoc)
    lfs     f0, 0x14(r30)
    lwz     r3, 0x6c(r30)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r30)
    lfs     f4, 0x58(r3)
    lwz     r3, gpMap(r13)
    lfs     f3, 0x18(r30)
    bl      isTouchedOneWall__4TMapCFffff
    clrlwi. r0, r3, 24
    beq-    branch_0x80264e08
    li      r0, 0x0
    b       branch_0x80264e0c

branch_0x80264e08:
    li      r0, 0x1
branch_0x80264e0c:
    cmpwi   r0, 0x0
    beq-    branch_0x80264e2c
    lis     r4, 0x8000
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_387
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80264e2c:
    lis     r29, 0xc00
    lwz     r5, 0x7c(r30)
    addi    r0, r29, 0x230
    cmpw    r5, r0
    beq-    branch_0x80265128
    bge-    branch_0x80264ed4
    lis     r4, 0x800
    addi    r0, r4, 0x23b
    cmpw    r5, r0
    beq-    branch_0x802653e4
    bge-    branch_0x80264e94
    lis     r3, 0x80
    addi    r0, r3, 0x23c
    cmpw    r5, r0
    beq-    branch_0x80265488
    bge-    branch_0x80264e80
    lis     r3, 0x8000
    addi    r0, r3, 0xa36
    cmpw    r5, r0
    beq-    branch_0x802652dc
    b       branch_0x80265594

branch_0x80264e80:
    addi    r0, r4, 0x239
    cmpw    r5, r0
    beq-    branch_0x80265300
    bge-    branch_0x80265378
    b       branch_0x80265594

branch_0x80264e94:
    addi    r0, r29, 0x223
    cmpw    r5, r0
    beq-    branch_0x80265088
    bge-    branch_0x80264ec4
    addi    r0, r29, 0x204
    cmpw    r5, r0
    beq-    branch_0x80264f90
    bge-    branch_0x80265594
    addi    r0, r29, 0x203
    cmpw    r5, r0
    bge-    branch_0x80264f80
    b       branch_0x80265594

branch_0x80264ec4:
    addi    r0, r29, 0x22f
    cmpw    r5, r0
    bge-    branch_0x80265098
    b       branch_0x80265594

branch_0x80264ed4:
    lis     r4, 0xc01
    subi    r0, r4, 0x7de0
    cmpw    r5, r0
    beq-    branch_0x80265070
    bge-    branch_0x80264f28
    addi    r0, r29, 0x23d
    cmpw    r5, r0
    beq-    branch_0x80265520
    bge-    branch_0x80264f18
    addi    r0, r29, 0x233
    cmpw    r5, r0
    beq-    branch_0x80265260
    bge-    branch_0x80265594
    addi    r0, r29, 0x232
    cmpw    r5, r0
    bge-    branch_0x802651f8
    b       branch_0x80265190

branch_0x80264f18:
    addi    r0, r29, 0x23f
    cmpw    r5, r0
    bge-    branch_0x80265594
    b       branch_0x80265560

branch_0x80264f28:
    lis     r3, 0xc40
    addi    r0, r3, 0x201
    cmpw    r5, r0
    beq-    branch_0x80264f60
    bge-    branch_0x80264f50
    subi    r0, r4, 0x7dde
    cmpw    r5, r0
    beq-    branch_0x80265088
    bge-    branch_0x80265594
    b       branch_0x80265080

branch_0x80264f50:
    addi    r0, r3, 0x203
    cmpw    r5, r0
    bge-    branch_0x80265594
    b       branch_0x80264f70

branch_0x80264f60:
    mr      r3, r30
    bl      waiting__6TMarioFv
    mr      r31, r3
    b       branch_0x80265594

branch_0x80264f70:
    mr      r3, r30
    bl      sleepily__6TMarioFv
    mr      r31, r3
    b       branch_0x80265594

branch_0x80264f80:
    mr      r3, r30
    bl      sleeping__6TMarioFv
    mr      r31, r3
    b       branch_0x80265594

branch_0x80264f90:
    lwz     r3, 0x74(r30)
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x80264fbc
    mr      r3, r30
    bl      sleepingEffectKill__6TMarioFv
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265068

branch_0x80264fbc:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80264fe4
    mr      r3, r30
    bl      sleepingEffectKill__6TMarioFv
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265068

branch_0x80264fe4:
    mr      r3, r30
    bl      waitingCommonEvents__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265004
    mr      r3, r30
    bl      sleepingEffectKill__6TMarioFv
    li      r3, 0x1
    b       branch_0x80265068

branch_0x80265004:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lwz     r0, 0x88(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80265020
    li      r4, 0x133
    b       branch_0x80265024

branch_0x80265020:
    li      r4, 0x136
branch_0x80265024:
    lfs     f1, -0xcb0(rtoc)
    mr      r3, r30
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265064
    mr      r3, r30
    bl      sleepingEffectKill__6TMarioFv
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265068

branch_0x80265064:
    li      r3, 0x0
branch_0x80265068:
    mr      r31, r3
    b       branch_0x80265594

branch_0x80265070:
    mr      r3, r30
    bl      squating__6TMarioFv
    mr      r31, r3
    b       branch_0x80265594

branch_0x80265080:
    li      r31, 0x0
    b       branch_0x80265594

branch_0x80265088:
    mr      r3, r30
    bl      squatStandup__6TMarioFv
    mr      r31, r3
    b       branch_0x80265594

branch_0x80265098:
    lwz     r3, 0x74(r30)
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x802650bc
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265120

branch_0x802650bc:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x802650dc
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265120

branch_0x802650dc:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0xf3
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026511c
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8026511c:
    li      r3, 0x0
branch_0x80265120:
    mr      r31, r3
    b       branch_0x80265594

branch_0x80265128:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      jumpEndEvents__6TMarioFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80265144
    li      r0, 0x1
    b       branch_0x80265188

branch_0x80265144:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x4e
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265184
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80265184:
    li      r0, 0x0
branch_0x80265188:
    mr      r31, r0
    b       branch_0x80265594

branch_0x80265190:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      jumpEndEvents__6TMarioFUl
    cmpwi   r3, 0x0
    beq-    branch_0x802651ac
    li      r0, 0x1
    b       branch_0x802651f0

branch_0x802651ac:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x4b
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802651ec
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802651ec:
    li      r0, 0x0
branch_0x802651f0:
    mr      r31, r0
    b       branch_0x80265594

branch_0x802651f8:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      jumpEndEvents__6TMarioFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80265214
    li      r0, 0x1
    b       branch_0x80265258

branch_0x80265214:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x57
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265254
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80265254:
    li      r0, 0x0
branch_0x80265258:
    mr      r31, r0
    b       branch_0x80265594

branch_0x80265260:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      jumpEndEvents__6TMarioFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8026527c
    li      r4, 0x1
    b       branch_0x802652d4

branch_0x8026527c:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0xbe
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802652bc
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802652bc:
    li      r4, 0x0
    sth     r4, 0x94(r30)
    lha     r3, 0x9a(r30)
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x9a(r30)
branch_0x802652d4:
    mr      r31, r4
    b       branch_0x80265594

branch_0x802652dc:
    mr      r3, r30
    bl      checkThrowObject__6TMarioFv
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r5, r4, 0x201
    li      r4, 0x65
    bl      jumpEndCommon__6TMarioFii
    li      r31, 0x0
    b       branch_0x80265594

branch_0x80265300:
    lwz     r4, 0x74(r30)
    li      r0, -0x2011
    addi    r3, r30, 0x0
    and     r0, r4, r0
    stw     r0, 0x74(r30)
    li      r4, 0x0
    bl      jumpEndEvents__6TMarioFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8026532c
    li      r0, 0x1
    b       branch_0x80265370

branch_0x8026532c:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x28
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026536c
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8026536c:
    li      r0, 0x0
branch_0x80265370:
    mr      r31, r0
    b       branch_0x80265594

branch_0x80265378:
    lis     r4, 0x200
    addi    r3, r30, 0x0
    addi    r4, r4, 0x880
    bl      jumpEndEvents__6TMarioFUl
    cmpwi   r3, 0x0
    beq-    branch_0x80265398
    li      r0, 0x1
    b       branch_0x802653dc

branch_0x80265398:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x57
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802653d8
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802653d8:
    li      r0, 0x0
branch_0x802653dc:
    mr      r31, r0
    b       branch_0x80265594

branch_0x802653e4:
    lwz     r0, 0x74(r30)
    lis     r4, 0x200
    addi    r3, r30, 0x0
    rlwinm  r0, r0, 0, 19, 17
    stw     r0, 0x74(r30)
    addi    r4, r4, 0x880
    bl      jumpEndEvents__6TMarioFUl
    cmpwi   r3, 0x0
    beq-    branch_0x8026543c
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x80265434
    lis     r4, 0xc01
    addi    r3, r30, 0x0
    subi    r4, r4, 0x7dde
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265480

branch_0x80265434:
    li      r3, 0x1
    b       branch_0x80265480

branch_0x8026543c:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x98
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026547c
    lis     r4, 0xc01
    addi    r3, r30, 0x0
    subi    r4, r4, 0x7dde
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8026547c:
    li      r3, 0x0
branch_0x80265480:
    mr      r31, r3
    b       branch_0x80265594

branch_0x80265488:
    li      r0, 0x1
    sth     r0, 0x84(r30)
    lwz     r3, 0x74(r30)
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x802654b4
    addi    r3, r30, 0x0
    li      r4, MARIOSTATUS_88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265518

branch_0x802654b4:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x802654d8
    lis     r4, 0x84
    addi    r3, r30, 0x0
    addi    r4, r4, MARIOSTATUS_452
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265518

branch_0x802654d8:
    mr      r3, r30
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r30, 0x0
    li      r4, 0x3a
    bl      setAnimation__6TMarioFif
    mr      r3, r30
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265514
    addi    r3, r30, 0x0
    addi    r4, r29, MARIOSTATUS_23e
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80265514:
    li      r3, 0x0
branch_0x80265518:
    mr      r31, r3
    b       branch_0x80265594

branch_0x80265520:
    lwz     r3, 0x74(r30)
    rlwinm. r0, r3, 0, 27, 27
    bne-    branch_0x80265540
    clrlwi. r0, r3, 28
    beq-    branch_0x80265540
    mr      r3, r30
    bl      checkAllMotions__6TMarioFv
    b       branch_0x80265558

branch_0x80265540:
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r5, r4, 0x201
    li      r4, 0x10
    bl      stopCommon__6TMarioFii
    li      r3, 0x0
branch_0x80265558:
    mr      r31, r3
    b       branch_0x80265594

branch_0x80265560:
    lwz     r0, 0x74(r30)
    clrlwi. r0, r0, 28
    beq-    branch_0x80265578
    mr      r3, r30
    bl      checkAllMotions__6TMarioFv
    b       branch_0x80265590

branch_0x80265578:
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r5, r4, 0x201
    li      r4, 0x8f
    bl      stopCommon__6TMarioFii
    li      r3, 0x0
branch_0x80265590:
    mr      r31, r3
branch_0x80265594:
    lwz     r0, 0x4c(sp)
    mr      r3, r31
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl jumpEndEvents__6TMarioFUl
jumpEndEvents__6TMarioFUl: # 0x802655b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x74(r3)
    rlwinm. r0, r5, 0, 27, 27
    beq-    branch_0x802655e4
    lis     r4, 0xc40
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8026561c

branch_0x802655e4:
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x80265608
    cmplwi  r4, 0x0
    bne-    branch_0x802655fc
    bl      changePlayerTriJump__6TMarioFv
    b       branch_0x8026561c

branch_0x802655fc:
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x8026561c

branch_0x80265608:
    clrlwi. r0, r5, 28
    beq-    branch_0x80265618
    bl      checkAllMotions__6TMarioFv
    b       branch_0x8026561c

branch_0x80265618:
    li      r3, 0x0
branch_0x8026561c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl jumpEndCommon__6TMarioFii
jumpEndCommon__6TMarioFii: # 0x8026562c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      setAnimation__6TMarioFif
    mr      r3, r29
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026568c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265690

branch_0x8026568c:
    li      r3, 0x0
branch_0x80265690:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl squatStandup__6TMarioFv
squatStandup__6TMarioFv: # 0x802656ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x802656e4
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802657b4

branch_0x802656e4:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80265704
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802657b4

branch_0x80265704:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80265728
    lis     r4, 0x200
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_880
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802657b4

branch_0x80265728:
    clrlwi. r0, r3, 31
    beq-    branch_0x8026574c
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_440
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802657b4

branch_0x8026574c:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x223
    bne-    branch_0x80265778
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x121
    bl      setAnimation__6TMarioFif
    b       branch_0x80265788

branch_0x80265778:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x96
    bl      setAnimation__6TMarioFif
branch_0x80265788:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802657b0
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802657b0:
    li      r3, 0x0
branch_0x802657b4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl squating__6TMarioFv
squating__6TMarioFv: # 0x802657c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    lwz     r4, 0x74(r3)
    rlwinm. r0, r4, 0, 29, 29
    beq-    branch_0x80265800
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265af0

branch_0x80265800:
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x80265820
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265af0

branch_0x80265820:
    rlwinm. r0, r4, 0, 27, 27
    beq-    branch_0x80265844
    lis     r4, 0xc01
    addi    r3, r31, 0x0
    subi    r4, r4, 0x7dde
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265af0

branch_0x80265844:
    rlwinm. r0, r4, 0, 17, 17
    bne-    branch_0x80265870
    rlwinm. r0, r4, 0, 22, 22
    bne-    branch_0x80265870
    lis     r4, 0xc01
    addi    r3, r31, 0x0
    subi    r4, r4, 0x7dde
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265af0

branch_0x80265870:
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8026589c
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80265890
    li      r0, 0x1
    b       branch_0x80265894

branch_0x80265890:
    li      r0, 0x0
branch_0x80265894:
    clrlwi. r0, r0, 24
    bne-    branch_0x802658b8
branch_0x8026589c:
    lis     r4, 0xc01
    addi    r3, r31, 0x0
    subi    r4, r4, 0x7dde
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265af0

branch_0x802658b8:
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x8026590c
    lwz     r4, 0x4fc(r31)
    lwz     r0, 0xd0(r4)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x8026590c
    cmplwi  r3, 0x0
    beq-    branch_0x8026590c
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8026590c
    lha     r5, 0x27e4(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_883
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265af0

branch_0x8026590c:
    bl      getCurrentNozzle__9TWaterGunCFv
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80265958
    lwz     r3, 0x3e4(r31)
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80265958
    lwz     r5, 0x3e4(r31)
    mr      r3, r31
    lfs     f1, 0xec(r31)
    li      r4, MARIOSTATUS_88b
    lfs     f0, 0x1d40(r5)
    li      r5, 0x0
    fadds   f0, f1, f0
    li      r6, 0x0
    stfs    f0, 0x314(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265af0

branch_0x80265958:
    lwz     r4, 0x4fc(r31)
    lwz     r3, 0xd0(r4)
    rlwinm. r0, r3, 0, 18, 18
    beq-    branch_0x80265a30
    addi    r3, r31, 0x0
    addi    r4, sp, 0x80
    addi    r5, sp, 0x7c
    addi    r6, sp, 0x78
    bl      getSideWalkValues__6TMarioFP15E_SIDEWALK_TYPEPfPf
    lwz     r0, 0x80(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802659b8
    bge-    branch_0x80265998
    cmpwi   r0, 0x0
    bge-    branch_0x802659a4
    b       branch_0x802659dc

branch_0x80265998:
    cmpwi   r0, 0x3
    bge-    branch_0x802659dc
    b       branch_0x802659cc

branch_0x802659a4:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x98
    bl      setAnimation__6TMarioFif
    b       branch_0x802659dc

branch_0x802659b8:
    lfs     f1, 0x7c(sp)
    addi    r3, r31, 0x0
    li      r4, 0x7f
    bl      setAnimation__6TMarioFif
    b       branch_0x802659dc

branch_0x802659cc:
    lfs     f1, 0x7c(sp)
    addi    r3, r31, 0x0
    li      r4, 0x80
    bl      setAnimation__6TMarioFif
branch_0x802659dc:
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f2, 0x78(sp)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f1, r4, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lhz     r3, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f2, 0x78(sp)
    slwi    r0, r0, 2
    lfs     f0, 0x18(r31)
    lfsx    f1, r4, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
    b       branch_0x80265ae4

branch_0x80265a30:
    rlwinm. r0, r3, 0, 21, 21
    beq-    branch_0x80265ae4
    lfs     f1, 0xa8(r4)
    li      r0, 0x1
    lfs     f0, -0xcac(rtoc)
    fabs    f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80265a54
    li      r0, 0x0
branch_0x80265a54:
    lfs     f0, 0x23f8(r31)
    lfs     f4, 0x240c(r31)
    fcmpo   cr0, f3, f0
    bge-    branch_0x80265a70
    fdivs   f0, f3, f0
    fmuls   f2, f4, f0
    b       branch_0x80265a88

branch_0x80265a70:
    lfs     f2, -0xcb0(rtoc)
    fsubs   f1, f3, f0
    fsubs   f0, f2, f0
    fsubs   f2, f2, f4
    fdivs   f0, f1, f0
    fmadds  f2, f2, f0, f4
branch_0x80265a88:
    clrlwi. r0, r0, 24
    bne-    branch_0x80265a94
    fneg    f2, f2
branch_0x80265a94:
    lha     r4, 0x604(r31)
    lis     r0, 0x4330
    lfd     f1, -0xca8(rtoc)
    addi    r3, r31, 0x0
    neg     r4, r4
    xoris   r4, r4, 0x8000
    lha     r5, 0x96(r31)
    stw     r4, 0x94(sp)
    li      r4, 0x98
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    add     r0, r5, r0
    sth     r0, 0x96(r31)
    lfs     f1, -0xcb0(rtoc)
    bl      setAnimation__6TMarioFif
branch_0x80265ae4:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    li      r3, 0x0
branch_0x80265af0:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl getSideWalkValues__6TMarioFP15E_SIDEWALK_TYPEPfPf
getSideWalkValues__6TMarioFP15E_SIDEWALK_TYPEPfPf: # 0x80265b04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r6
    stw     r30, 0x30(sp)
    mr      r30, r5
    lha     r7, 0x96(r3)
    lha     r5, 0x90(r3)
    lwz     r0, -0x5eac(r13)
    subf    r5, r7, r5
    lwz     r6, -0x5ea8(r13)
    extsh   r7, r5
    lfs     f3, 0x8c(r3)
    clrlwi  r5, r7, 16
    lfs     f0, 0xff8(r3)
    sraw    r0, r5, r0
    lfs     f1, -0xcac(rtoc)
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fmuls   f2, f3, f2
    fmuls   f31, f2, f0
    fcmpu   cr0, f1, f31
    bne-    branch_0x80265b80
    li      r0, 0x0
    stw     r0, 0x0(r4)
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, 0xc(r3)
    stfs    f0, 0x0(r30)
    b       branch_0x80265bb4

branch_0x80265b80:
    lfs     f0, 0x100c(r3)
    fmuls   f0, f31, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x80265b94
    fneg    f0, f0
branch_0x80265b94:
    extsh.  r0, r7
    stfs    f0, 0x0(r30)
    ble-    branch_0x80265bac
    li      r0, 0x1
    stw     r0, 0x0(r4)
    b       branch_0x80265bb4

branch_0x80265bac:
    li      r0, 0x2
    stw     r0, 0x0(r4)
branch_0x80265bb4:
    stfs    f31, 0x0(r31)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl sleeping__6TMarioFv
sleeping__6TMarioFv: # 0x80265bd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x74(r3)
    andi.   r0, r0, 0xa41f
    bne-    branch_0x80265c14
    lwz     r3, 0x108(r31)
    lfs     f1, -0xcac(rtoc)
    lfs     f0, 0x1c(r3)
    fcmpo   cr0, f0, f1
    bgt-    branch_0x80265c14
    lfs     f0, 0x20(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80265c58
branch_0x80265c14:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80265c30
    addi    r3, r31, 0x0
    li      r4, SOUND_7883
    bl      startVoice__6TMarioFUl
    b       branch_0x80265c3c

branch_0x80265c30:
    addi    r3, r31, 0x0
    li      r4, SOUND_789a
    bl      startVoice__6TMarioFUl
branch_0x80265c3c:
    lis     r4, 0xc00
    lhz     r5, 0x84(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_204
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265d54

branch_0x80265c58:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    lhz     r0, 0x114(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80265c74
    li      r0, 0x1
    b       branch_0x80265c78

branch_0x80265c74:
    li      r0, 0x0
branch_0x80265c78:
    clrlwi. r0, r0, 24
    beq-    branch_0x80265ca0
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0x1b4(r31)
    stw     r0, 0x1b8(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1bc(r31)
    bl      sleepingEffect__6TMarioFv
branch_0x80265ca0:
    lhz     r0, 0x84(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80265d10
    bge-    branch_0x80265cbc
    cmpwi   r0, 0x0
    bge-    branch_0x80265cc8
    b       branch_0x80265d50

branch_0x80265cbc:
    cmpwi   r0, 0x3
    bge-    branch_0x80265d50
    b       branch_0x80265d40

branch_0x80265cc8:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x132
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265d50
    lhz     r3, 0x86(r31)
    addi    r3, r3, 0x1
    clrlwi  r0, r3, 16
    sth     r3, 0x86(r31)
    cmplwi  r0, 0x28
    ble-    branch_0x80265d50
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x80265d50

branch_0x80265d10:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x134
    bl      setAnimation__6TMarioFif
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265d50
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x80265d50

branch_0x80265d40:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x135
    bl      setAnimation__6TMarioFif
branch_0x80265d50:
    li      r3, 0x0
branch_0x80265d54:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl sleepily__6TMarioFv
sleepily__6TMarioFv: # 0x80265d68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      waitingCommonEvents__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265d90
    li      r3, 0x1
    b       branch_0x80265e74

branch_0x80265d90:
    lwz     r3, 0x108(r31)
    lfs     f1, -0xcac(rtoc)
    lfs     f0, 0x1c(r3)
    fcmpo   cr0, f0, f1
    bgt-    branch_0x80265db0
    lfs     f0, 0x20(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80265dc8
branch_0x80265db0:
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_201
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80265dc8:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x3
    bne-    branch_0x80265df0
    lis     r4, 0xc00
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_203
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80265e74

branch_0x80265df0:
    cmpwi   r0, 0x1
    beq-    branch_0x80265e28
    bge-    branch_0x80265e08
    cmpwi   r0, 0x0
    bge-    branch_0x80265e14
    b       branch_0x80265e4c

branch_0x80265e08:
    cmpwi   r0, 0x3
    bge-    branch_0x80265e4c
    b       branch_0x80265e3c

branch_0x80265e14:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x12f
    bl      setAnimation__6TMarioFif
    b       branch_0x80265e4c

branch_0x80265e28:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x130
    bl      setAnimation__6TMarioFif
    b       branch_0x80265e4c

branch_0x80265e3c:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x131
    bl      setAnimation__6TMarioFif
branch_0x80265e4c:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265e68
    lhz     r3, 0x84(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x84(r31)
branch_0x80265e68:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    li      r3, 0x0
branch_0x80265e74:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl waiting__6TMarioFv
waiting__6TMarioFv: # 0x80265e88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      waitingCommonEvents__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265eb0
    li      r3, 0x1
    b       branch_0x80266114

branch_0x80265eb0:
    mr      r3, r31
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265f5c
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x5
    bne-    branch_0x80265ed4
    li      r0, 0x1
    b       branch_0x80265ed8

branch_0x80265ed4:
    li      r0, 0x0
branch_0x80265ed8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80265f5c
    mr      r3, r31
    bl      canSleep__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80265f5c
    lhz     r0, 0xfa(r31)
    cmplwi  r0, 0xc3
    bne-    branch_0x80265f5c
    mr      r3, r31
    bl      isAnimeLoopOrStop__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80265f5c
    lwz     r3, 0xe0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80265f5c
    lfs     f1, 0x38(r3)
    lfs     f0, -0xca0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80265f5c
    lhz     r3, 0x86(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x86(r31)
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0xa
    blt-    branch_0x80265f5c
    lis     r4, 0xc40
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_202
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266114

branch_0x80265f5c:
    lhz     r4, 0x84(r31)
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x80265f7c
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x114
    bl      setAnimation__6TMarioFif
    b       branch_0x80266108

branch_0x80265f7c:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x80265fa0
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xd9
    bl      setAnimation__6TMarioFif
    b       branch_0x80266108

branch_0x80265fa0:
    lfs     f1, 0x368(r31)
    lfs     f0, -0xcac(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80265fb8
    li      r0, 0x1
    b       branch_0x80265fbc

branch_0x80265fb8:
    li      r0, 0x0
branch_0x80265fbc:
    cmpwi   r0, 0x0
    beq-    branch_0x80265fd8
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xe7
    bl      setAnimation__6TMarioFif
    b       branch_0x80266108

branch_0x80265fd8:
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x5
    bne-    branch_0x80266074
    lwz     r3, 0x80(r31)
    addis   r0, r3, 0xf400
    cmplwi  r0, 0x23d
    beq-    branch_0x80266014
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80266008
    li      r0, 0x1
    b       branch_0x8026600c

branch_0x80266008:
    li      r0, 0x0
branch_0x8026600c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80266074
branch_0x80266014:
    clrlwi. r0, r4, 31
    bne-    branch_0x80266074
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xda
    bl      setAnimation__6TMarioFif
    lwz     r3, 0x3a8(r31)
    lfs     f1, -0xc9c(rtoc)
    lwz     r3, 0xc(r3)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80266054
    lha     r4, 0x96(r31)
    addi    r3, r31, 0x0
    subi    r4, r4, 0x4000
    bl      emitSweat__6TMarioFs
branch_0x80266054:
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80266108
    lhz     r0, 0x84(r31)
    ori     r0, r0, 0x1
    sth     r0, 0x84(r31)
    b       branch_0x80266108

branch_0x80266074:
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x3
    bgt-    branch_0x802660d4
    lhz     r0, 0xfa(r31)
    cmplwi  r0, 0x11d
    beq-    branch_0x802660a8
    cmplwi  r0, 0x127
    beq-    branch_0x802660a8
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x127
    bl      setAnimation__6TMarioFif
    b       branch_0x80266108

branch_0x802660a8:
    cmplwi  r0, 0x127
    bne-    branch_0x80266108
    mr      r3, r31
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80266108
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x11d
    bl      setAnimation__6TMarioFif
    b       branch_0x80266108

branch_0x802660d4:
    lfs     f1, -0xcac(rtoc)
    lfs     f0, 0x8c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802660f8
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0xc3
    bl      setAnimation__6TMarioFif
    b       branch_0x80266108

branch_0x802660f8:
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x12c
    bl      setAnimation__6TMarioFif
branch_0x80266108:
    mr      r3, r31
    bl      waitProcess__6TMarioFv
    li      r3, 0x0
branch_0x80266114:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl changeMontemanWaitingAnim__6TMarioFv
changeMontemanWaitingAnim__6TMarioFv: # 0x80266128
    lwz     r4, 0x7c(r3)
    addis   r0, r4, 0xf3c0
    cmplwi  r0, 0x201
    bnelr-    

    lhz     r0, 0x84(r3)
    ori     r0, r0, 0x2
    sth     r0, 0x84(r3)
    blr


.globl stopCommon__6TMarioFii
stopCommon__6TMarioFii: # 0x80266148
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    bl      waitProcess__6TMarioFv
    lfs     f1, -0xcb0(rtoc)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      setAnimation__6TMarioFif
    mr      r3, r29
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x802661c4
    lwz     r3, 0x3f0(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x34(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x802661c4
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802661e8

branch_0x802661c4:
    mr      r3, r29
    bl      isLast1AnimeFrame__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802661e8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802661e8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl waitingCommonEvents__6TMarioFv
waitingCommonEvents__6TMarioFv: # 0x80266204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80266254
    mr      r3, r31
    bl      considerRotateJumpStart__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026623c
    li      r3, 0x1
    b       branch_0x80266410

branch_0x8026623c:
    lis     r4, 0x200
    addi    r3, r31, 0x0
    addi    r4, r4, 0x880
    li      r5, 0x0
    bl      changePlayerJumping__6TMarioFUlUl
    b       branch_0x80266410

branch_0x80266254:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x80266274
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x80266274:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80266294
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x80266294:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x802662b8
    lis     r4, 0xc00
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_227
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x802662b8:
    clrlwi. r0, r3, 31
    beq-    branch_0x80266324
    lha     r3, 0x96(r31)
    li      r4, 0x0
    lha     r0, 0x90(r31)
    lha     r5, 0x604(r31)
    subf    r0, r3, r0
    addi    r6, r5, 0x0
    extsh   r3, r0
    bl      IConverge__Fiiii
    lha     r0, 0x90(r31)
    subf    r0, r3, r0
    sth     r0, 0x96(r31)
    lfs     f1, 0x8c(r31)
    lfs     f0, 0x23a8(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80266324
    mr      r3, r31
    lha     r4, 0x96(r31)
    bl      emitSmoke__6TMarioFs
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_440
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x80266324:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80266338
    li      r0, 0x1
    b       branch_0x8026633c

branch_0x80266338:
    li      r0, 0x0
branch_0x8026633c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80266360
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, MARIOSTATUS_440
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x80266360:
    mr      r3, r31
    bl      canSquat__6TMarioCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80266394
    lfs     f0, -0xcac(rtoc)
    lis     r4, 0xc01
    addi    r3, r31, 0x0
    stfs    f0, 0xb0(r31)
    subi    r4, r4, 0x7de0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x80266394:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x802663b8
    addi    r3, r31, 0x0
    li      r4, MARIOSTATUS_384
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x802663b8:
    mr      r3, r31
    bl      rocketCheck__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802663f4
    lwz     r5, 0x3e4(r31)
    mr      r3, r31
    lfs     f1, 0xec(r31)
    li      r4, MARIOSTATUS_88b
    lfs     f0, 0x1d40(r5)
    li      r5, 0x0
    fadds   f0, f1, f0
    li      r6, 0x0
    stfs    f0, 0x314(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80266410

branch_0x802663f4:
    mr      r3, r31
    bl      considerRotateStart__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026640c
    li      r3, 0x1
    b       branch_0x80266410

branch_0x8026640c:
    li      r3, 0x0
branch_0x80266410:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl canPut__6TMarioFv
canPut__6TMarioFv: # 0x80266424
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, -0x5eac(r13)
    lhz     r3, 0x96(r3)
    lwz     r5, 0x6c(r31)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lwz     r4, -0x5ea4(r13)
    lfsx    f2, r3, r0
    lfs     f3, -0xcb8(rtoc)
    lfs     f1, 0x10(r31)
    lfsx    f6, r4, r0
    fmadds  f1, f3, f2, f1
    lfs     f0, 0x18(r31)
    lfs     f5, -0xcb4(rtoc)
    lfs     f2, 0x14(r31)
    fmadds  f3, f3, f6, f0
    fadds   f2, f5, f2
    lfs     f4, 0x58(r5)
    lwz     r3, gpMap(r13)
    bl      isTouchedOneWall__4TMapCFffff
    clrlwi. r0, r3, 24
    beq-    branch_0x80266498
    li      r3, 0x0
    b       branch_0x802664d0

branch_0x80266498:
    lfs     f1, -0xcb4(rtoc)
    lfs     f0, 0x14(r31)
    lwz     r3, 0x6c(r31)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f4, 0x58(r3)
    lwz     r3, gpMap(r13)
    lfs     f3, 0x18(r31)
    bl      isTouchedOneWall__4TMapCFffff
    clrlwi. r0, r3, 24
    beq-    branch_0x802664cc
    li      r3, 0x0
    b       branch_0x802664d0

branch_0x802664cc:
    li      r3, 0x1
branch_0x802664d0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl canSleep__6TMarioFv
canSleep__6TMarioFv: # 0x802664e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80266514
    li      r0, 0x1
    b       branch_0x80266518

branch_0x80266514:
    li      r0, 0x0
branch_0x80266518:
    clrlwi. r0, r0, 24
    beq-    branch_0x80266528
    li      r3, 0x0
    b       branch_0x80266684

branch_0x80266528:
    lfs     f31, 0x960(r31)
    addi    r4, sp, 0x18
    lfs     f1, 0x10(r31)
    lfs     f2, -0xc98(rtoc)
    lfs     f0, 0x14(r31)
    fsubs   f1, f1, f31
    lfs     f30, 0x974(r31)
    fadds   f2, f2, f0
    lwz     r3, gpMap(r13)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0xec(r31)
    fsubs   f0, f2, f30
    fcmpo   cr0, f1, f0
    blt-    branch_0x80266570
    fadds   f0, f2, f30
    fcmpo   cr0, f0, f1
    bge-    branch_0x80266578
branch_0x80266570:
    li      r3, 0x0
    b       branch_0x80266684

branch_0x80266578:
    lfs     f1, 0x10(r31)
    addi    r4, sp, 0x18
    lfs     f2, -0xc98(rtoc)
    lfs     f0, 0x14(r31)
    fadds   f1, f1, f31
    lwz     r3, gpMap(r13)
    fadds   f2, f2, f0
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0xec(r31)
    fsubs   f0, f2, f30
    fcmpo   cr0, f1, f0
    blt-    branch_0x802665b8
    fadds   f0, f2, f30
    fcmpo   cr0, f0, f1
    bge-    branch_0x802665c0
branch_0x802665b8:
    li      r3, 0x0
    b       branch_0x80266684

branch_0x802665c0:
    lfs     f0, 0x18(r31)
    addi    r4, sp, 0x18
    lfs     f2, -0xc98(rtoc)
    lfs     f1, 0x14(r31)
    fsubs   f3, f0, f31
    lwz     r3, gpMap(r13)
    fadds   f2, f2, f1
    lfs     f1, 0x10(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0xec(r31)
    fsubs   f0, f2, f30
    fcmpo   cr0, f1, f0
    blt-    branch_0x80266600
    fadds   f0, f2, f30
    fcmpo   cr0, f0, f1
    bge-    branch_0x80266608
branch_0x80266600:
    li      r3, 0x0
    b       branch_0x80266684

branch_0x80266608:
    lfs     f0, 0x18(r31)
    addi    r4, sp, 0x18
    lfs     f2, -0xc98(rtoc)
    lfs     f1, 0x14(r31)
    fadds   f3, f0, f31
    lwz     r3, gpMap(r13)
    fadds   f2, f2, f1
    lfs     f1, 0x10(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0xec(r31)
    fsubs   f0, f2, f30
    fcmpo   cr0, f1, f0
    blt-    branch_0x80266648
    fadds   f0, f2, f30
    fcmpo   cr0, f0, f1
    bge-    branch_0x80266650
branch_0x80266648:
    li      r3, 0x0
    b       branch_0x80266684

branch_0x80266650:
    lfs     f1, -0xc98(rtoc)
    lfs     f0, 0x14(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, -0xc94(rtoc)
    bl      isTouchedOneWall__4TMapCFffff
    clrlwi. r0, r3, 24
    beq-    branch_0x80266680
    li      r3, 0x0
    b       branch_0x80266684

branch_0x80266680:
    li      r3, 0x1
branch_0x80266684:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x38
    blr


.globl startTalking__6TMarioFv
startTalking__6TMarioFv: # 0x802666a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0xe0(r3)
    lhz     r0, 0x4(r4)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802666c4
    li      r0, 0x1
    b       branch_0x802666c8

branch_0x802666c4:
    li      r0, 0x0
branch_0x802666c8:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802666dc
    li      r0, 0x0
    b       branch_0x802666e0

branch_0x802666dc:
    li      r0, 0x1
branch_0x802666e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80266714
    lfs     f1, -0xcb0(rtoc)
    lis     r4, 0x1000
    lfs     f0, 0xec(r3)
    addi    r4, r4, MARIOSTATUS_1308
    li      r5, 0x0
    fadds   f0, f1, f0
    li      r6, 0x1
    stfs    f0, 0x14(r3)
    bl      changePlayerStatus__6TMarioFUlUlb
    li      r3, 0x1
    b       branch_0x80266718

branch_0x80266714:
    li      r3, 0x0
branch_0x80266718:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_MarioWait_cpp
__sinit_MarioWait_cpp: # 0x80266728
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4320
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80266770
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80266770:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802667a0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802667a0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802667d0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802667d0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80266800
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80266800:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80266830
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80266830:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80266860
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80266860:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80266890
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80266890:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802668c0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802668c0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802668f0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802668f0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80266920
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80266920:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80266950
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80266950:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80266980
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80266980:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802669b0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802669b0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802669e0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802669e0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80266a10
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80266a10:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
