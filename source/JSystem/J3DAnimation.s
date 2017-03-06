
.globl init__12J3DFrameCtrlFs
init__12J3DFrameCtrlFs: # 0x802e1160
    li      r0, 0x2
    stb     r0, 0x4(r3)
    li      r0, 0x0
    stb     r0, 0x5(r3)
    sth     r0, 0x6(r3)
    sth     r4, 0x8(r3)
    sth     r0, 0xa(r3)
    lfs     f0, 0x2a8(rtoc)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0x10(r3)
    blr


.globl checkPass__12J3DFrameCtrlFf
checkPass__12J3DFrameCtrlFf: # 0x802e1190
    stwu    sp, -0x18(sp)
    lbz     r0, 0x4(r3)
    lfs     f2, 0x10(r3)
    lfs     f0, 0xc(r3)
    cmpwi   r0, 0x2
    fadds   f3, f2, f0
    beq-    branch_0x802e1298
    bge-    branch_0x802e11bc
    cmpwi   r0, 0x0
    bge-    branch_0x802e11c8
    b       branch_0x802e1724

branch_0x802e11bc:
    cmpwi   r0, 0x5
    bge-    branch_0x802e1724
    b       branch_0x802e1654

branch_0x802e11c8:
    lha     r4, 0x6(r3)
    lis     r0, 0x4330
    lfd     f4, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f4
    fcmpo   cr0, f3, f0
    bge-    branch_0x802e1200
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f3, f0, f4
branch_0x802e1200:
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f4, 0x2b8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f4
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x802e1244
    stw     r3, 0x14(sp)
    lfs     f0, 0x2b0(rtoc)
    stw     r0, 0x10(sp)
    lfd     f3, 0x10(sp)
    fsubs   f3, f3, f4
    fsubs   f3, f3, f0
branch_0x802e1244:
    fcmpo   cr0, f2, f3
    cror    2, 0, 2
    bne-    branch_0x802e1274
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x802e126c
    fcmpo   cr0, f1, f3
    bge-    branch_0x802e126c
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e126c:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1274:
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x802e1290
    fcmpo   cr0, f1, f2
    bge-    branch_0x802e1290
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e1290:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1298:
    lha     r7, 0x6(r3)
    lis     r5, 0x4330
    lfd     f0, 0x2b8(rtoc)
    xoris   r6, r7, 0x8000
    stw     r6, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f2, f4
    bge-    branch_0x802e1360
    lfs     f4, 0x2ac(rtoc)
    b       branch_0x802e1304

branch_0x802e12c8:
    lha     r0, 0xa(r3)
    subf    r0, r7, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f0
    fcmpo   cr0, f2, f4
    cror    2, 0, 2
    beq-    branch_0x802e131c
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f0
    fadds   f3, f3, f2
branch_0x802e1304:
    stw     r6, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f0
    fcmpo   cr0, f3, f2
    blt+    branch_0x802e12c8
branch_0x802e131c:
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x802e1358
    lha     r3, 0xa(r3)
    lis     r0, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e1358
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e1358:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1360:
    lha     r8, 0x8(r3)
    xoris   r4, r8, 0x8000
    stw     r4, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f4, f2
    cror    2, 0, 2
    bne-    branch_0x802e1428
    lfs     f4, 0x2ac(rtoc)
    b       branch_0x802e13c8

branch_0x802e138c:
    lha     r0, 0xa(r3)
    subf    r0, r0, r8
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f0
    fcmpo   cr0, f2, f4
    cror    2, 0, 2
    beq-    branch_0x802e13e4
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f0
    fsubs   f3, f3, f2
branch_0x802e13c8:
    stw     r4, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f0
    fcmpo   cr0, f3, f2
    cror    2, 1, 2
    beq+    branch_0x802e138c
branch_0x802e13e4:
    lha     r3, 0xa(r3)
    lis     r0, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e1420
    fcmpo   cr0, f1, f3
    bge-    branch_0x802e1420
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e1420:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1428:
    stw     r6, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f3, f4
    bge-    branch_0x802e1510
    lfs     f5, 0x2ac(rtoc)
    b       branch_0x802e1484

branch_0x802e1448:
    lha     r0, 0xa(r3)
    subf    r0, r7, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f4, f5
    cror    2, 0, 2
    beq-    branch_0x802e149c
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fadds   f3, f3, f4
branch_0x802e1484:
    stw     r6, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f3, f4
    blt+    branch_0x802e1448
branch_0x802e149c:
    xoris   r0, r7, 0x8000
    lfd     f4, 0x2b8(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f4
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e14cc
    fcmpo   cr0, f1, f2
    blt-    branch_0x802e1500
branch_0x802e14cc:
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x802e1508
    lha     r3, 0xa(r3)
    lis     r0, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e1508
branch_0x802e1500:
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e1508:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1510:
    stw     r4, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f4, f3
    cror    2, 0, 2
    bne-    branch_0x802e1600
    lfs     f5, 0x2ac(rtoc)
    b       branch_0x802e1570

branch_0x802e1534:
    lha     r0, 0xa(r3)
    subf    r0, r0, r8
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f4, f5
    cror    2, 0, 2
    beq-    branch_0x802e158c
    stw     r0, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fsubs   f3, f3, f4
branch_0x802e1570:
    stw     r4, 0x14(sp)
    stw     r5, 0x10(sp)
    lfd     f4, 0x10(sp)
    fsubs   f4, f4, f0
    fcmpo   cr0, f3, f4
    cror    2, 1, 2
    beq+    branch_0x802e1534
branch_0x802e158c:
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x802e15bc
    xoris   r0, r8, 0x8000
    lfd     f2, 0x2b8(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    blt-    branch_0x802e15f0
branch_0x802e15bc:
    lha     r3, 0xa(r3)
    lis     r0, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e15f8
    fcmpo   cr0, f1, f3
    bge-    branch_0x802e15f8
branch_0x802e15f0:
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e15f8:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1600:
    fcmpo   cr0, f2, f3
    cror    2, 0, 2
    bne-    branch_0x802e1630
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x802e1628
    fcmpo   cr0, f1, f3
    bge-    branch_0x802e1628
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e1628:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1630:
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x802e164c
    fcmpo   cr0, f1, f2
    bge-    branch_0x802e164c
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e164c:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1654:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f4, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f4
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x802e1698
    stw     r4, 0x14(sp)
    lfs     f0, 0x2b0(rtoc)
    stw     r0, 0x10(sp)
    lfd     f3, 0x10(sp)
    fsubs   f3, f3, f4
    fsubs   f3, f3, f0
branch_0x802e1698:
    lha     r3, 0x6(r3)
    lis     r0, 0x4330
    lfd     f4, 0x2b8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f4
    fcmpo   cr0, f3, f0
    bge-    branch_0x802e16d0
    stw     r3, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f3, f0, f4
branch_0x802e16d0:
    fcmpo   cr0, f2, f3
    cror    2, 0, 2
    bne-    branch_0x802e1700
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x802e16f8
    fcmpo   cr0, f1, f3
    bge-    branch_0x802e16f8
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e16f8:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1700:
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x802e171c
    fcmpo   cr0, f1, f2
    bge-    branch_0x802e171c
    li      r3, 0x1
    b       branch_0x802e1728

branch_0x802e171c:
    li      r3, 0x0
    b       branch_0x802e1728

branch_0x802e1724:
    li      r3, 0x0
branch_0x802e1728:
    addi    sp, sp, 0x18
    blr


.globl update__12J3DFrameCtrlFv
update__12J3DFrameCtrlFv: # 0x802e1730
    stwu    sp, -0x18(sp)
    li      r0, 0x0
    stb     r0, 0x5(r3)
    lfs     f1, 0x10(r3)
    lfs     f0, 0xc(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r3)
    lbz     r0, 0x4(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x802e18ec
    bge-    branch_0x802e176c
    cmpwi   r0, 0x0
    beq-    branch_0x802e177c
    bge-    branch_0x802e1834
    b       branch_0x802e1b64

branch_0x802e176c:
    cmpwi   r0, 0x4
    beq-    branch_0x802e1ab4
    bge-    branch_0x802e1b64
    b       branch_0x802e1a04

branch_0x802e177c:
    lha     r4, 0x6(r3)
    lis     r0, 0x4330
    lfd     f1, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f2, 0x10(r3)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e17d0
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0xc(r3)
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x1
    stb     r0, 0x5(r3)
branch_0x802e17d0:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f1, 0x10(r3)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e1b64
    stw     r4, 0x14(sp)
    lfs     f0, 0x2b0(rtoc)
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0xc(r3)
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x1
    stb     r0, 0x5(r3)
    b       branch_0x802e1b64

branch_0x802e1834:
    lha     r4, 0x6(r3)
    lis     r0, 0x4330
    lfd     f1, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f2, 0x10(r3)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1888
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0xc(r3)
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x1
    stb     r0, 0x5(r3)
branch_0x802e1888:
    lha     r0, 0x8(r3)
    lis     r4, 0x4330
    lfd     f1, 0x2b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f2, 0x10(r3)
    stw     r0, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e1b64
    lha     r0, 0x6(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0xc(r3)
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x1
    stb     r0, 0x5(r3)
    b       branch_0x802e1b64

branch_0x802e18ec:
    lfd     f3, 0x2b8(rtoc)
    lis     r4, 0x4330
    lfs     f2, 0x2ac(rtoc)
    b       branch_0x802e1950

branch_0x802e18fc:
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x2
    stb     r0, 0x5(r3)
    lha     r5, 0x6(r3)
    lha     r0, 0xa(r3)
    subf    r0, r5, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f3
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    beq-    branch_0x802e1974
    stw     r0, 0x14(sp)
    lfs     f1, 0x10(r3)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f3
    fadds   f0, f1, f0
    stfs    f0, 0x10(r3)
branch_0x802e1950:
    lha     r0, 0x6(r3)
    lfs     f1, 0x10(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f3
    fcmpo   cr0, f1, f0
    blt+    branch_0x802e18fc
branch_0x802e1974:
    lfd     f3, 0x2b8(rtoc)
    lis     r4, 0x4330
    lfs     f2, 0x2ac(rtoc)
    b       branch_0x802e19d8

branch_0x802e1984:
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x2
    stb     r0, 0x5(r3)
    lha     r5, 0xa(r3)
    lha     r0, 0x8(r3)
    subf    r0, r5, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f3
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    beq-    branch_0x802e1b64
    stw     r0, 0x14(sp)
    lfs     f1, 0x10(r3)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r3)
branch_0x802e19d8:
    lha     r0, 0x8(r3)
    lfs     f1, 0x10(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    stw     r4, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f3
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x802e1984
    b       branch_0x802e1b64

branch_0x802e1a04:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f1, 0x10(r3)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e1a5c
    stw     r4, 0x14(sp)
    lfs     f0, 0x2b0(rtoc)
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f0, 0xc(r3)
    fneg    f0, f0
    stfs    f0, 0xc(r3)
branch_0x802e1a5c:
    lha     r4, 0x6(r3)
    lis     r0, 0x4330
    lfd     f1, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f2, 0x10(r3)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1b64
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0xc(r3)
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x1
    stb     r0, 0x5(r3)
    b       branch_0x802e1b64

branch_0x802e1ab4:
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f1, 0x10(r3)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e1b0c
    stw     r4, 0x14(sp)
    lfs     f0, 0x2b0(rtoc)
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f0, 0xc(r3)
    fneg    f0, f0
    stfs    f0, 0xc(r3)
branch_0x802e1b0c:
    lha     r4, 0x6(r3)
    lis     r0, 0x4330
    lfd     f1, 0x2b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f2, 0x10(r3)
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1b64
    stw     r4, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, 0xc(r3)
    fneg    f0, f0
    stfs    f0, 0xc(r3)
    lbz     r0, 0x5(r3)
    ori     r0, r0, 0x2
    stb     r0, 0x5(r3)
branch_0x802e1b64:
    addi    sp, sp, 0x18
    blr


.globl __ct__10J3DAnmBaseFv
__ct__10J3DAnmBaseFv: # 0x802e1b6c
    lis     r4, 0x803e
    addi    r0, r4, 0x1354
    stw     r0, 0xc(r3)
    li      r0, 0x0
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0x4(r3)
    sth     r0, 0x2(r3)
    blr


.globl __ct__10J3DAnmBaseFs
__ct__10J3DAnmBaseFs: # 0x802e1b8c
    lis     r5, 0x803e
    addi    r0, r5, 0x1354
    stw     r0, 0xc(r3)
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0x4(r3)
    sth     r4, 0x2(r3)
    blr


.globl __dt__10J3DAnmBaseFv
__dt__10J3DAnmBaseFv: # 0x802e1ba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e1bdc
    lis     r3, 0x803e
    addi    r3, r3, 0x1354
    extsh.  r0, r4
    stw     r3, 0xc(r31)
    ble-    branch_0x802e1bdc
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e1bdc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getTransform__19J3DAnmTransformFullCFUsP16J3DTransformInfo
getTransform__19J3DAnmTransformFullCFUsP16J3DTransformInfo: # 0x802e1bf4
    stwu    sp, -0x20(sp)
    clrlwi  r0, r4, 16
    mulli   r0, r0, 0x24
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r6, 0x24(r3)
    fcmpo   cr0, f0, f2
    lhzx    r7, r6, r0
    cror    2, 0, 2
    bne-    branch_0x802e1c68
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1c68
    fctiwz  f0, f2
    add     r4, r6, r0
    lhz     r4, 0x2(r4)
    lwz     r7, 0x10(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 2
    lfsx    f0, r7, r4
    stfs    f0, 0x0(r5)
    b       branch_0x802e1cb0

branch_0x802e1c68:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1c90
    add     r4, r6, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0x2(r4)
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x0(r5)
    b       branch_0x802e1cb0

branch_0x802e1c90:
    add     r4, r6, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0x2(r4)
    add     r4, r7, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x0(r5)
branch_0x802e1cb0:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r6, 0x24(r3)
    fcmpo   cr0, f0, f2
    lhzx    r7, r6, r0
    cror    2, 0, 2
    bne-    branch_0x802e1d18
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1d18
    fctiwz  f0, f2
    add     r4, r6, r0
    lhz     r4, 0x2(r4)
    lwz     r7, 0x10(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 2
    lfsx    f0, r7, r4
    stfs    f0, 0x0(r5)
    b       branch_0x802e1d60

branch_0x802e1d18:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1d40
    add     r4, r6, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0x2(r4)
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x0(r5)
    b       branch_0x802e1d60

branch_0x802e1d40:
    add     r4, r6, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0x2(r4)
    add     r4, r7, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x0(r5)
branch_0x802e1d60:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0xc(r6)
    cror    2, 0, 2
    bne-    branch_0x802e1dc8
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1dc8
    fctiwz  f0, f2
    lhz     r4, 0xe(r6)
    lwz     r7, 0x10(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 2
    lfsx    f0, r7, r4
    stfs    f0, 0x4(r5)
    b       branch_0x802e1e10

branch_0x802e1dc8:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1df0
    add     r4, r7, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0xe(r4)
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x4(r5)
    b       branch_0x802e1e10

branch_0x802e1df0:
    add     r4, r7, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0xe(r4)
    add     r4, r8, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x4(r5)
branch_0x802e1e10:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0x18(r6)
    cror    2, 0, 2
    bne-    branch_0x802e1e78
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1e78
    fctiwz  f0, f2
    lhz     r4, 0x1a(r6)
    lwz     r7, 0x10(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 2
    lfsx    f0, r7, r4
    stfs    f0, 0x8(r5)
    b       branch_0x802e1ec0

branch_0x802e1e78:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1ea0
    add     r4, r7, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0x1a(r4)
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x8(r5)
    b       branch_0x802e1ec0

branch_0x802e1ea0:
    add     r4, r7, r0
    lwz     r6, 0x10(r3)
    lhz     r4, 0x1a(r4)
    add     r4, r8, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x8(r5)
branch_0x802e1ec0:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0x4(r6)
    cror    2, 0, 2
    bne-    branch_0x802e1f28
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1f28
    fctiwz  f0, f2
    lhz     r4, 0x6(r6)
    lwz     r7, 0x14(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 1
    lhax    r4, r7, r4
    sth     r4, 0xc(r5)
    b       branch_0x802e1f70

branch_0x802e1f28:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1f50
    add     r4, r7, r0
    lwz     r6, 0x14(r3)
    lhz     r4, 0x6(r4)
    slwi    r4, r4, 1
    lhax    r4, r6, r4
    sth     r4, 0xc(r5)
    b       branch_0x802e1f70

branch_0x802e1f50:
    add     r4, r7, r0
    lwz     r6, 0x14(r3)
    lhz     r4, 0x6(r4)
    add     r4, r8, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 1
    lhax    r4, r6, r4
    sth     r4, 0xc(r5)
branch_0x802e1f70:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0x10(r6)
    cror    2, 0, 2
    bne-    branch_0x802e1fd8
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e1fd8
    fctiwz  f0, f2
    lhz     r4, 0x12(r6)
    lwz     r7, 0x14(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 1
    lhax    r4, r7, r4
    sth     r4, 0xe(r5)
    b       branch_0x802e2020

branch_0x802e1fd8:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e2000
    add     r4, r7, r0
    lwz     r6, 0x14(r3)
    lhz     r4, 0x12(r4)
    slwi    r4, r4, 1
    lhax    r4, r6, r4
    sth     r4, 0xe(r5)
    b       branch_0x802e2020

branch_0x802e2000:
    add     r4, r7, r0
    lwz     r6, 0x14(r3)
    lhz     r4, 0x12(r4)
    add     r4, r8, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 1
    lhax    r4, r6, r4
    sth     r4, 0xe(r5)
branch_0x802e2020:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0x1c(r6)
    cror    2, 0, 2
    bne-    branch_0x802e2088
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e2088
    fctiwz  f0, f2
    lhz     r4, 0x1e(r6)
    lwz     r7, 0x14(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 1
    lhax    r4, r7, r4
    sth     r4, 0x10(r5)
    b       branch_0x802e20d0

branch_0x802e2088:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e20b0
    add     r4, r7, r0
    lwz     r6, 0x14(r3)
    lhz     r4, 0x1e(r4)
    slwi    r4, r4, 1
    lhax    r4, r6, r4
    sth     r4, 0x10(r5)
    b       branch_0x802e20d0

branch_0x802e20b0:
    add     r4, r7, r0
    lwz     r6, 0x14(r3)
    lhz     r4, 0x1e(r4)
    add     r4, r8, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 1
    lhax    r4, r6, r4
    sth     r4, 0x10(r5)
branch_0x802e20d0:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0x8(r6)
    cror    2, 0, 2
    bne-    branch_0x802e2138
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e2138
    fctiwz  f0, f2
    lhz     r4, 0xa(r6)
    lwz     r7, 0x18(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 2
    lfsx    f0, r7, r4
    stfs    f0, 0x14(r5)
    b       branch_0x802e2180

branch_0x802e2138:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e2160
    add     r4, r7, r0
    lwz     r6, 0x18(r3)
    lhz     r4, 0xa(r4)
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x14(r5)
    b       branch_0x802e2180

branch_0x802e2160:
    add     r4, r7, r0
    lwz     r6, 0x18(r3)
    lhz     r4, 0xa(r4)
    add     r4, r8, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x14(r5)
branch_0x802e2180:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0x14(r6)
    cror    2, 0, 2
    bne-    branch_0x802e21e8
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e21e8
    fctiwz  f0, f2
    lhz     r4, 0x16(r6)
    lwz     r7, 0x18(r3)
    stfd    f0, 0x18(sp)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    slwi    r4, r4, 2
    lfsx    f0, r7, r4
    stfs    f0, 0x18(r5)
    b       branch_0x802e2230

branch_0x802e21e8:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e2210
    add     r4, r7, r0
    lwz     r6, 0x18(r3)
    lhz     r4, 0x16(r4)
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x18(r5)
    b       branch_0x802e2230

branch_0x802e2210:
    add     r4, r7, r0
    lwz     r6, 0x18(r3)
    lhz     r4, 0x16(r4)
    add     r4, r8, r4
    subi    r4, r4, 0x1
    slwi    r4, r4, 2
    lfsx    f0, r6, r4
    stfs    f0, 0x18(r5)
branch_0x802e2230:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r7, 0x24(r3)
    fcmpo   cr0, f0, f2
    add     r6, r7, r0
    lhz     r8, 0x20(r6)
    cror    2, 0, 2
    bne-    branch_0x802e2298
    stw     r8, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e2298
    fctiwz  f0, f2
    lhz     r0, 0x22(r6)
    lwz     r4, 0x18(r3)
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    add     r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    stfs    f0, 0x1c(r5)
    b       branch_0x802e22e0

branch_0x802e2298:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e22c0
    add     r4, r7, r0
    lwz     r3, 0x18(r3)
    lhz     r0, 0x22(r4)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x1c(r5)
    b       branch_0x802e22e0

branch_0x802e22c0:
    add     r4, r7, r0
    lwz     r6, 0x18(r3)
    lhz     r0, 0x22(r4)
    add     r3, r8, r0
    subi    r0, r3, 0x1
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    stfs    f0, 0x1c(r5)
branch_0x802e22e0:
    addi    sp, sp, 0x20
    blr


.globl J3DHermiteInterpolationS__FfPsPsPsPsPsPs
J3DHermiteInterpolationS__FfPsPsPsPsPsPs: # 0x802e22e8
    psq_l   f0, 0x0(3), 1, 5
    psq_l   f3, 0x0(6), 1, 5
    psq_l   f2, 0x0(4), 1, 5
    fsubs   f4, f3, f0
    psq_l   f3, 0x0(7), 1, 5
    fsubs   f6, f1, f0
    psq_l   f1, 0x0(8), 1, 5
    fsubs   f5, f3, f2
    fdivs   f6, f6, f4
    psq_l   f0, 0x0(5), 1, 5
    fmadds  f1, f1, f4, f2
    fmuls   f7, f6, f6
    fnmsubs  f5, f4, f0, f5
    fsubs   f1, f1, f3
    fsubs   f1, f1, f5
    fmuls   f3, f7, f1
    fmadds  f1, f4, f0, f3
    fmadds  f1, f1, f6, f2
    fmadds  f1, f5, f7, f1
    fsubs   f1, f1, f3
    blr


.globl J3DGetKeyFrameInterpolationS__FfP18J3DAnmKeyTableBasePs
J3DGetKeyFrameInterpolationS__FfP18J3DAnmKeyTableBasePs: # 0x802e233c
    mflr    r0
    addi    r8, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lhz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802e245c
    lha     r0, 0x0(r8)
    lis     r4, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e239c
    lha     r0, 0x2(r8)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e255c

branch_0x802e239c:
    lhz     r5, 0x0(r3)
    subi    r0, r5, 0x1
    mulli   r3, r0, 0x6
    lhax    r0, r8, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e23ec
    add     r3, r8, r3
    lha     r0, 0x2(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e255c

branch_0x802e23ec:
    mr      r6, r5
    b       branch_0x802e2434

branch_0x802e23f4:
    srawi   r5, r6, 1
    addze   r5, r5
    mulli   r3, r5, 0x6
    lhax    r0, r8, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e2430
    add     r8, r8, r3
    subf    r6, r5, r6
    b       branch_0x802e2434

branch_0x802e2430:
    mr      r6, r5
branch_0x802e2434:
    cmpwi   r6, 0x1
    bgt+    branch_0x802e23f4
    addi    r3, r8, 0x0
    addi    r4, r8, 0x2
    addi    r5, r8, 0x4
    addi    r6, r8, 0x6
    addi    r7, r8, 0x8
    addi    r8, r8, 0xa
    bl      J3DHermiteInterpolationS__FfPsPsPsPsPsPs
    b       branch_0x802e255c

branch_0x802e245c:
    lha     r0, 0x0(r8)
    lis     r4, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e24a0
    lha     r0, 0x2(r8)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e255c

branch_0x802e24a0:
    lhz     r5, 0x0(r3)
    subi    r0, r5, 0x1
    slwi    r3, r0, 3
    lhax    r0, r8, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e24f0
    add     r3, r8, r3
    lha     r0, 0x2(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e255c

branch_0x802e24f0:
    mr      r6, r5
    b       branch_0x802e2538

branch_0x802e24f8:
    srawi   r5, r6, 1
    addze   r5, r5
    slwi    r3, r5, 3
    lhax    r0, r8, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e2534
    add     r8, r8, r3
    subf    r6, r5, r6
    b       branch_0x802e2538

branch_0x802e2534:
    mr      r6, r5
branch_0x802e2538:
    cmpwi   r6, 0x1
    bgt+    branch_0x802e24f8
    addi    r3, r8, 0x0
    addi    r4, r8, 0x2
    addi    r5, r8, 0x6
    addi    r6, r8, 0x8
    addi    r7, r8, 0xa
    addi    r8, r8, 0xc
    bl      J3DHermiteInterpolationS__FfPsPsPsPsPsPs
branch_0x802e255c:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl calcTransform__18J3DAnmTransformKeyCFfUsP16J3DTransformInfo
calcTransform__18J3DAnmTransformKeyCFfUsP16J3DTransformInfo: # 0x802e256c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    clrlwi  r30, r4, 16
    mulli   r31, r30, 0x36
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    addi    r29, r5, 0x0
    lwz     r4, 0x28(r3)
    add     r3, r4, r31
    lhz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e25d0
    bge-    branch_0x802e25e8
    cmpwi   r0, 0x0
    bge-    branch_0x802e25c4
    b       branch_0x802e25e8

branch_0x802e25c4:
    lfs     f0, 0x2a8(rtoc)
    stfs    f0, 0x0(r29)
    b       branch_0x802e2608

branch_0x802e25d0:
    lhz     r0, 0x2(r3)
    lwz     r3, 0x10(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x0(r29)
    b       branch_0x802e2608

branch_0x802e25e8:
    add     r4, r4, r31
    fmr     f1, f31
    lhz     r0, 0x2(r4)
    lwz     r4, 0x10(r28)
    slwi    r0, r0, 2
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x0(r29)
branch_0x802e2608:
    lwz     r6, 0x28(r28)
    add     r3, r6, r31
    lhz     r0, 0x12(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e2638
    bge-    branch_0x802e2650
    cmpwi   r0, 0x0
    bge-    branch_0x802e262c
    b       branch_0x802e2650

branch_0x802e262c:
    lfs     f0, 0x2a8(rtoc)
    stfs    f0, 0x4(r29)
    b       branch_0x802e2680

branch_0x802e2638:
    lhz     r0, 0x14(r3)
    lwz     r3, 0x10(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x4(r29)
    b       branch_0x802e2680

branch_0x802e2650:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x10(r28)
    addi    r0, r3, 0x1
    add     r3, r6, r31
    mulli   r5, r0, 0x12
    lhz     r0, 0x14(r3)
    slwi    r0, r0, 2
    add     r3, r6, r5
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x4(r29)
branch_0x802e2680:
    lwz     r6, 0x28(r28)
    add     r3, r6, r31
    lhz     r0, 0x24(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e26b0
    bge-    branch_0x802e26c8
    cmpwi   r0, 0x0
    bge-    branch_0x802e26a4
    b       branch_0x802e26c8

branch_0x802e26a4:
    lfs     f0, 0x2a8(rtoc)
    stfs    f0, 0x8(r29)
    b       branch_0x802e26f8

branch_0x802e26b0:
    lhz     r0, 0x26(r3)
    lwz     r3, 0x10(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x8(r29)
    b       branch_0x802e26f8

branch_0x802e26c8:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x10(r28)
    addi    r0, r3, 0x2
    add     r3, r6, r31
    mulli   r5, r0, 0x12
    lhz     r0, 0x26(r3)
    slwi    r0, r0, 2
    add     r3, r6, r5
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x8(r29)
branch_0x802e26f8:
    lwz     r5, 0x28(r28)
    add     r3, r5, r31
    lhz     r0, 0x6(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e2728
    bge-    branch_0x802e274c
    cmpwi   r0, 0x0
    bge-    branch_0x802e271c
    b       branch_0x802e274c

branch_0x802e271c:
    li      r0, 0x0
    sth     r0, 0xc(r29)
    b       branch_0x802e278c

branch_0x802e2728:
    lhz     r0, 0x8(r3)
    lwz     r4, 0x14(r28)
    slwi    r3, r0, 1
    lwz     r0, 0x24(r28)
    lhax    r3, r4, r3
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0xc(r29)
    b       branch_0x802e278c

branch_0x802e274c:
    add     r3, r5, r31
    fmr     f1, f31
    lhz     r0, 0x8(r3)
    addi    r3, r31, 0x6
    lwz     r4, 0x14(r28)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolationS__FfP18J3DAnmKeyTableBasePs
    fctiwz  f0, f1
    lwz     r0, 0x24(r28)
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0xc(r29)
branch_0x802e278c:
    lwz     r6, 0x28(r28)
    add     r3, r6, r31
    lhz     r0, 0x18(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e27bc
    bge-    branch_0x802e27e0
    cmpwi   r0, 0x0
    bge-    branch_0x802e27b0
    b       branch_0x802e27e0

branch_0x802e27b0:
    li      r0, 0x0
    sth     r0, 0xe(r29)
    b       branch_0x802e282c

branch_0x802e27bc:
    lhz     r0, 0x1a(r3)
    lwz     r4, 0x14(r28)
    slwi    r3, r0, 1
    lwz     r0, 0x24(r28)
    lhax    r3, r4, r3
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0xe(r29)
    b       branch_0x802e282c

branch_0x802e27e0:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x14(r28)
    addi    r0, r3, 0x1
    mulli   r5, r0, 0x12
    add     r3, r6, r31
    lhz     r0, 0x1a(r3)
    addi    r3, r5, 0x6
    add     r3, r6, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolationS__FfP18J3DAnmKeyTableBasePs
    fctiwz  f0, f1
    lwz     r0, 0x24(r28)
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0xe(r29)
branch_0x802e282c:
    lwz     r6, 0x28(r28)
    add     r3, r6, r31
    lhz     r0, 0x2a(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e285c
    bge-    branch_0x802e2880
    cmpwi   r0, 0x0
    bge-    branch_0x802e2850
    b       branch_0x802e2880

branch_0x802e2850:
    li      r0, 0x0
    sth     r0, 0x10(r29)
    b       branch_0x802e28cc

branch_0x802e285c:
    lhz     r0, 0x2c(r3)
    lwz     r4, 0x14(r28)
    slwi    r3, r0, 1
    lwz     r0, 0x24(r28)
    lhax    r3, r4, r3
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0x10(r29)
    b       branch_0x802e28cc

branch_0x802e2880:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x14(r28)
    addi    r0, r3, 0x2
    mulli   r5, r0, 0x12
    add     r3, r6, r31
    lhz     r0, 0x2c(r3)
    addi    r3, r5, 0x6
    add     r3, r6, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolationS__FfP18J3DAnmKeyTableBasePs
    fctiwz  f0, f1
    lwz     r0, 0x24(r28)
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0x10(r29)
branch_0x802e28cc:
    lwz     r5, 0x28(r28)
    add     r3, r5, r31
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e28fc
    bge-    branch_0x802e2914
    cmpwi   r0, 0x0
    bge-    branch_0x802e28f0
    b       branch_0x802e2914

branch_0x802e28f0:
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0x14(r29)
    b       branch_0x802e293c

branch_0x802e28fc:
    lhz     r0, 0xe(r3)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x14(r29)
    b       branch_0x802e293c

branch_0x802e2914:
    add     r3, r5, r31
    fmr     f1, f31
    lhz     r0, 0xe(r3)
    addi    r3, r31, 0xc
    lwz     r4, 0x18(r28)
    add     r3, r5, r3
    slwi    r0, r0, 2
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x14(r29)
branch_0x802e293c:
    lwz     r6, 0x28(r28)
    add     r3, r6, r31
    lhz     r0, 0x1e(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e296c
    bge-    branch_0x802e2984
    cmpwi   r0, 0x0
    bge-    branch_0x802e2960
    b       branch_0x802e2984

branch_0x802e2960:
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0x18(r29)
    b       branch_0x802e29b8

branch_0x802e296c:
    lhz     r0, 0x20(r3)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x18(r29)
    b       branch_0x802e29b8

branch_0x802e2984:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x18(r28)
    addi    r0, r3, 0x1
    mulli   r5, r0, 0x12
    add     r3, r6, r31
    lhz     r0, 0x20(r3)
    addi    r3, r5, 0xc
    add     r3, r6, r3
    slwi    r0, r0, 2
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x18(r29)
branch_0x802e29b8:
    lwz     r6, 0x28(r28)
    add     r3, r6, r31
    lhz     r0, 0x30(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e29e8
    bge-    branch_0x802e2a00
    cmpwi   r0, 0x0
    bge-    branch_0x802e29dc
    b       branch_0x802e2a00

branch_0x802e29dc:
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0x1c(r29)
    b       branch_0x802e2a34

branch_0x802e29e8:
    lhz     r0, 0x32(r3)
    lwz     r3, 0x18(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x1c(r29)
    b       branch_0x802e2a34

branch_0x802e2a00:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x18(r28)
    addi    r0, r3, 0x2
    mulli   r5, r0, 0x12
    add     r3, r6, r31
    lhz     r0, 0x32(r3)
    addi    r3, r5, 0xc
    add     r3, r6, r3
    slwi    r0, r0, 2
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x1c(r29)
branch_0x802e2a34:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x38
    blr


.globl calcTransform__19J3DAnmTextureSRTKeyCFfUsP17J3DTextureSRTInfo
calcTransform__19J3DAnmTextureSRTKeyCFfUsP17J3DTextureSRTInfo: # 0x802e2a58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    clrlwi  r30, r4, 16
    mulli   r31, r30, 0x36
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    addi    r29, r5, 0x0
    lwz     r4, 0x18(r3)
    add     r3, r4, r31
    lhz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e2abc
    bge-    branch_0x802e2ad4
    cmpwi   r0, 0x0
    bge-    branch_0x802e2ab0
    b       branch_0x802e2ad4

branch_0x802e2ab0:
    lfs     f0, 0x2a8(rtoc)
    stfs    f0, 0x0(r29)
    b       branch_0x802e2af4

branch_0x802e2abc:
    lhz     r0, 0x2(r3)
    lwz     r3, 0x24(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x0(r29)
    b       branch_0x802e2af4

branch_0x802e2ad4:
    add     r4, r4, r31
    fmr     f1, f31
    lhz     r0, 0x2(r4)
    lwz     r4, 0x24(r28)
    slwi    r0, r0, 2
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x0(r29)
branch_0x802e2af4:
    lwz     r6, 0x18(r28)
    add     r3, r6, r31
    lhz     r0, 0x12(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e2b24
    bge-    branch_0x802e2b3c
    cmpwi   r0, 0x0
    bge-    branch_0x802e2b18
    b       branch_0x802e2b3c

branch_0x802e2b18:
    lfs     f0, 0x2a8(rtoc)
    stfs    f0, 0x4(r29)
    b       branch_0x802e2b6c

branch_0x802e2b24:
    lhz     r0, 0x14(r3)
    lwz     r3, 0x24(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x4(r29)
    b       branch_0x802e2b6c

branch_0x802e2b3c:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x24(r28)
    addi    r0, r3, 0x1
    add     r3, r6, r31
    mulli   r5, r0, 0x12
    lhz     r0, 0x14(r3)
    slwi    r0, r0, 2
    add     r3, r6, r5
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x4(r29)
branch_0x802e2b6c:
    lwz     r6, 0x18(r28)
    add     r3, r6, r31
    lhz     r0, 0x2a(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e2b9c
    bge-    branch_0x802e2bc0
    cmpwi   r0, 0x0
    bge-    branch_0x802e2b90
    b       branch_0x802e2bc0

branch_0x802e2b90:
    li      r0, 0x0
    sth     r0, 0x8(r29)
    b       branch_0x802e2c0c

branch_0x802e2b9c:
    lhz     r0, 0x2c(r3)
    lwz     r4, 0x28(r28)
    slwi    r3, r0, 1
    lwz     r0, 0x10(r28)
    lhax    r3, r4, r3
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0x8(r29)
    b       branch_0x802e2c0c

branch_0x802e2bc0:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x28(r28)
    addi    r0, r3, 0x2
    mulli   r5, r0, 0x12
    add     r3, r6, r31
    lhz     r0, 0x2c(r3)
    addi    r3, r5, 0x6
    add     r3, r6, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    fctiwz  f0, f1
    lwz     r0, 0x10(r28)
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    slw     r0, r3, r0
    extsh   r0, r0
    sth     r0, 0x8(r29)
branch_0x802e2c0c:
    lwz     r5, 0x18(r28)
    add     r3, r5, r31
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e2c3c
    bge-    branch_0x802e2c54
    cmpwi   r0, 0x0
    bge-    branch_0x802e2c30
    b       branch_0x802e2c54

branch_0x802e2c30:
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0xc(r29)
    b       branch_0x802e2c7c

branch_0x802e2c3c:
    lhz     r0, 0xe(r3)
    lwz     r3, 0x2c(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0xc(r29)
    b       branch_0x802e2c7c

branch_0x802e2c54:
    add     r3, r5, r31
    fmr     f1, f31
    lhz     r0, 0xe(r3)
    addi    r3, r31, 0xc
    lwz     r4, 0x2c(r28)
    add     r3, r5, r3
    slwi    r0, r0, 2
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0xc(r29)
branch_0x802e2c7c:
    lwz     r6, 0x18(r28)
    add     r3, r6, r31
    lhz     r0, 0x1e(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e2cac
    bge-    branch_0x802e2cc4
    cmpwi   r0, 0x0
    bge-    branch_0x802e2ca0
    b       branch_0x802e2cc4

branch_0x802e2ca0:
    lfs     f0, 0x2ac(rtoc)
    stfs    f0, 0x10(r29)
    b       branch_0x802e2cf8

branch_0x802e2cac:
    lhz     r0, 0x20(r3)
    lwz     r3, 0x2c(r28)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    stfs    f0, 0x10(r29)
    b       branch_0x802e2cf8

branch_0x802e2cc4:
    mulli   r3, r30, 0x3
    fmr     f1, f31
    lwz     r4, 0x2c(r28)
    addi    r0, r3, 0x1
    mulli   r5, r0, 0x12
    add     r3, r6, r31
    lhz     r0, 0x20(r3)
    addi    r3, r5, 0xc
    add     r3, r6, r3
    slwi    r0, r0, 2
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    stfs    f1, 0x10(r29)
branch_0x802e2cf8:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x38
    blr


.globl getWeight__17J3DAnmClusterFullCFUs
getWeight__17J3DAnmClusterFullCFUs: # 0x802e2d1c
    stwu    sp, -0x18(sp)
    clrlslwi  r4, r4, 16, 2
    lfs     f0, 0x2ac(rtoc)
    lfs     f3, 0x4(r3)
    lwz     r5, 0x14(r3)
    fcmpo   cr0, f0, f3
    lhzx    r6, r5, r4
    cror    2, 0, 2
    bne-    branch_0x802e2d88
    stw     r6, 0x14(sp)
    lis     r0, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f3, f0
    bge-    branch_0x802e2d88
    fctiwz  f0, f3
    add     r4, r5, r4
    lhz     r0, 0x2(r4)
    lwz     r4, 0x10(r3)
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    add     r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    b       branch_0x802e2dec

branch_0x802e2d88:
    lfs     f1, 0x2ac(rtoc)
    fcmpo   cr0, f3, f1
    bge-    branch_0x802e2dac
    add     r4, r5, r4
    lwz     r3, 0x10(r3)
    lhz     r0, 0x2(r4)
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    b       branch_0x802e2dec

branch_0x802e2dac:
    stw     r6, 0x14(sp)
    lis     r0, 0x4330
    lfd     f2, 0x2c0(rtoc)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x802e2dec
    add     r4, r5, r4
    lwz     r5, 0x10(r3)
    lhz     r0, 0x2(r4)
    add     r3, r6, r0
    subi    r0, r3, 0x1
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
branch_0x802e2dec:
    addi    sp, sp, 0x18
    blr


.globl getWeight__16J3DAnmClusterKeyCFUs
getWeight__16J3DAnmClusterKeyCFUs: # 0x802e2df4
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    mulli   r4, r0, 0x6
    stwu    sp, -0x8(sp)
    lwz     r5, 0x14(r3)
    add     r3, r5, r4
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802e2e44
    cmplwi  r0, 0x1
    beq-    branch_0x802e2e44
    lhz     r0, 0x2(r3)
    lwz     r4, 0x10(r6)
    slwi    r0, r0, 2
    lfs     f1, 0x4(r6)
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
    b       branch_0x802e2e68

branch_0x802e2e44:
    cmplwi  r0, 0x0
    bne-    branch_0x802e2e54
    lfs     f1, 0x2a8(rtoc)
    b       branch_0x802e2e68

branch_0x802e2e54:
    add     r3, r5, r4
    lwz     r4, 0x10(r6)
    lhz     r0, 0x2(r3)
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
branch_0x802e2e68:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getColor__18J3DAnmVtxColorFullCFUcUsP8_GXColor
getColor__18J3DAnmVtxColorFullCFUcUsP8_GXColor: # 0x802e2e78
    stwu    sp, -0x20(sp)
    clrlslwi  r0, r4, 24, 2
    add     r4, r3, r0
    lfs     f1, 0x4(r3)
    clrlslwi  r0, r5, 16, 4
    lfs     f0, 0x2ac(rtoc)
    lwzu    r7, 0x1c(r4)
    fcmpo   cr0, f1, f0
    lhzx    r8, r7, r0
    bge-    branch_0x802e2eb4
    add     r5, r7, r0
    lwz     r7, 0x24(r3)
    lhz     r5, 0x2(r5)
    lbzx    r5, r7, r5
    stb     r5, 0x0(r6)
branch_0x802e2eb4:
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e2efc
    lwz     r5, 0x0(r4)
    lwz     r7, 0x24(r3)
    add     r5, r5, r0
    lhz     r5, 0x2(r5)
    add     r7, r7, r8
    add     r5, r7, r5
    lbz     r5, -0x1(r5)
    stb     r5, 0x0(r6)
branch_0x802e2efc:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e2f58
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e2f58
    fctiwz  f0, f2
    lwz     r5, 0x0(r4)
    lwz     r8, 0x24(r3)
    add     r5, r5, r0
    stfd    f0, 0x18(sp)
    lhz     r5, 0x2(r5)
    lwz     r7, 0x1c(sp)
    add     r5, r7, r5
    lbzx    r5, r8, r5
    stb     r5, 0x0(r6)
branch_0x802e2f58:
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    lwz     r5, 0x0(r4)
    fcmpo   cr0, f1, f0
    add     r5, r5, r0
    lhz     r8, 0x4(r5)
    bge-    branch_0x802e2f84
    lwz     r7, 0x28(r3)
    lhz     r5, 0x6(r5)
    lbzx    r5, r7, r5
    stb     r5, 0x1(r6)
branch_0x802e2f84:
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e2fcc
    lwz     r5, 0x0(r4)
    lwz     r7, 0x28(r3)
    add     r5, r5, r0
    lhz     r5, 0x6(r5)
    add     r7, r7, r8
    add     r5, r7, r5
    lbz     r5, -0x1(r5)
    stb     r5, 0x1(r6)
branch_0x802e2fcc:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e3028
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e3028
    fctiwz  f0, f2
    lwz     r5, 0x0(r4)
    lwz     r8, 0x28(r3)
    add     r5, r5, r0
    stfd    f0, 0x18(sp)
    lhz     r5, 0x6(r5)
    lwz     r7, 0x1c(sp)
    add     r5, r7, r5
    lbzx    r5, r8, r5
    stb     r5, 0x1(r6)
branch_0x802e3028:
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    lwz     r5, 0x0(r4)
    fcmpo   cr0, f1, f0
    add     r5, r5, r0
    lhz     r8, 0x8(r5)
    bge-    branch_0x802e3054
    lwz     r7, 0x2c(r3)
    lhz     r5, 0xa(r5)
    lbzx    r5, r7, r5
    stb     r5, 0x2(r6)
branch_0x802e3054:
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e309c
    lwz     r5, 0x0(r4)
    lwz     r7, 0x2c(r3)
    add     r5, r5, r0
    lhz     r5, 0xa(r5)
    add     r7, r7, r8
    add     r5, r7, r5
    lbz     r5, -0x1(r5)
    stb     r5, 0x2(r6)
branch_0x802e309c:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e30f8
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e30f8
    fctiwz  f0, f2
    lwz     r5, 0x0(r4)
    lwz     r8, 0x2c(r3)
    add     r5, r5, r0
    stfd    f0, 0x18(sp)
    lhz     r5, 0xa(r5)
    lwz     r7, 0x1c(sp)
    add     r5, r7, r5
    lbzx    r5, r8, r5
    stb     r5, 0x2(r6)
branch_0x802e30f8:
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    lwz     r5, 0x0(r4)
    fcmpo   cr0, f1, f0
    add     r5, r5, r0
    lhz     r8, 0xc(r5)
    bge-    branch_0x802e3124
    lwz     r7, 0x30(r3)
    lhz     r5, 0xe(r5)
    lbzx    r5, r7, r5
    stb     r5, 0x3(r6)
branch_0x802e3124:
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e316c
    lwz     r5, 0x0(r4)
    lwz     r7, 0x30(r3)
    add     r5, r5, r0
    lhz     r5, 0xe(r5)
    add     r7, r7, r8
    add     r5, r7, r5
    lbz     r5, -0x1(r5)
    stb     r5, 0x3(r6)
branch_0x802e316c:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e31c8
    stw     r8, 0x1c(sp)
    lis     r5, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e31c8
    fctiwz  f0, f2
    lwz     r4, 0x0(r4)
    lwz     r5, 0x30(r3)
    add     r3, r4, r0
    stfd    f0, 0x18(sp)
    lhz     r0, 0xe(r3)
    lwz     r3, 0x1c(sp)
    add     r0, r3, r0
    lbzx    r0, r5, r0
    stb     r0, 0x3(r6)
branch_0x802e31c8:
    addi    sp, sp, 0x20
    blr


.globl getColor__17J3DAnmVtxColorKeyCFUcUsP8_GXColor
getColor__17J3DAnmVtxColorKeyCFUcUsP8_GXColor: # 0x802e31d0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlslwi  r0, r4, 24, 2
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    add     r30, r28, r0
    clrlwi  r0, r5, 16
    lwzu    r4, 0x1c(r30)
    mulli   r31, r0, 0x18
    add     r3, r4, r31
    lhz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e3234
    bge-    branch_0x802e324c
    cmpwi   r0, 0x0
    bge-    branch_0x802e3228
    b       branch_0x802e324c

branch_0x802e3228:
    li      r0, 0x0
    stb     r0, 0x0(r29)
    b       branch_0x802e32c0

branch_0x802e3234:
    lhz     r0, 0x2(r3)
    lwz     r3, 0x24(r28)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x0(r29)
    b       branch_0x802e32c0

branch_0x802e324c:
    add     r4, r4, r31
    lwz     r5, 0x24(r28)
    lhz     r0, 0x2(r4)
    lfs     f1, 0x4(r28)
    slwi    r0, r0, 1
    add     r4, r5, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e327c
    li      r0, 0x0
    stb     r0, 0x0(r29)
branch_0x802e327c:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e3290
    li      r0, 0xff
    stb     r0, 0x0(r29)
branch_0x802e3290:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e32c0
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e32c0
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x0(r29)
branch_0x802e32c0:
    lwz     r5, 0x0(r30)
    add     r3, r5, r31
    lhz     r0, 0x6(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e32f0
    bge-    branch_0x802e3308
    cmpwi   r0, 0x0
    bge-    branch_0x802e32e4
    b       branch_0x802e3308

branch_0x802e32e4:
    li      r0, 0x0
    stb     r0, 0x1(r29)
    b       branch_0x802e3384

branch_0x802e32f0:
    lhz     r0, 0x8(r3)
    lwz     r3, 0x28(r28)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x1(r29)
    b       branch_0x802e3384

branch_0x802e3308:
    add     r3, r5, r31
    lwz     r4, 0x28(r28)
    lhz     r0, 0x8(r3)
    addi    r3, r31, 0x6
    lfs     f1, 0x4(r28)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e3340
    li      r0, 0x0
    stb     r0, 0x1(r29)
branch_0x802e3340:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e3354
    li      r0, 0xff
    stb     r0, 0x1(r29)
branch_0x802e3354:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e3384
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e3384
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x1(r29)
branch_0x802e3384:
    lwz     r5, 0x0(r30)
    add     r3, r5, r31
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e33b4
    bge-    branch_0x802e33cc
    cmpwi   r0, 0x0
    bge-    branch_0x802e33a8
    b       branch_0x802e33cc

branch_0x802e33a8:
    li      r0, 0x0
    stb     r0, 0x2(r29)
    b       branch_0x802e3448

branch_0x802e33b4:
    lhz     r0, 0xe(r3)
    lwz     r3, 0x2c(r28)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x2(r29)
    b       branch_0x802e3448

branch_0x802e33cc:
    add     r3, r5, r31
    lwz     r4, 0x2c(r28)
    lhz     r0, 0xe(r3)
    addi    r3, r31, 0xc
    lfs     f1, 0x4(r28)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e3404
    li      r0, 0x0
    stb     r0, 0x2(r29)
branch_0x802e3404:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e3418
    li      r0, 0xff
    stb     r0, 0x2(r29)
branch_0x802e3418:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e3448
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e3448
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x2(r29)
branch_0x802e3448:
    lwz     r5, 0x0(r30)
    add     r3, r5, r31
    lhz     r0, 0x12(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e3478
    bge-    branch_0x802e3490
    cmpwi   r0, 0x0
    bge-    branch_0x802e346c
    b       branch_0x802e3490

branch_0x802e346c:
    li      r0, 0x0
    stb     r0, 0x3(r29)
    b       branch_0x802e350c

branch_0x802e3478:
    lhz     r0, 0x14(r3)
    lwz     r3, 0x30(r28)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x3(r29)
    b       branch_0x802e350c

branch_0x802e3490:
    add     r3, r5, r31
    lwz     r4, 0x30(r28)
    lhz     r0, 0x14(r3)
    addi    r3, r31, 0x12
    lfs     f1, 0x4(r28)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e34c8
    li      r0, 0x0
    stb     r0, 0x3(r29)
branch_0x802e34c8:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e34dc
    li      r0, 0xff
    stb     r0, 0x3(r29)
branch_0x802e34dc:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e350c
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e350c
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x3(r29)
branch_0x802e350c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl searchUpdateMaterialID__11J3DAnmColorFP12J3DModelData
searchUpdateMaterialID__11J3DAnmColorFP12J3DModelData: # 0x802e352c
    mflr    r0
    lis     r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    subi    r31, r5, 0x1
    li      r29, 0x0
    b       branch_0x802e3598

branch_0x802e3554:
    lwz     r30, 0xb4(r28)
    mr      r4, r29
    lwz     r3, 0x20(r27)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, -0x1
    beq-    branch_0x802e3588
    lwz     r4, 0x1c(r27)
    clrlslwi  r0, r29, 16, 1
    sthx    r3, r4, r0
    b       branch_0x802e3594

branch_0x802e3588:
    lwz     r3, 0x1c(r27)
    clrlslwi  r0, r29, 16, 1
    sthx    r31, r3, r0
branch_0x802e3594:
    addi    r29, r29, 0x1
branch_0x802e3598:
    lhz     r0, 0x18(r27)
    clrlwi  r3, r29, 16
    cmplw   r3, r0
    blt+    branch_0x802e3554
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getColor__15J3DAnmColorFullCFUsP8_GXColor
getColor__15J3DAnmColorFullCFUsP8_GXColor: # 0x802e35bc
    stwu    sp, -0x20(sp)
    clrlslwi  r0, r4, 16, 4
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    lwz     r4, 0x34(r3)
    fcmpo   cr0, f1, f0
    lhzx    r7, r4, r0
    bge-    branch_0x802e35f0
    add     r4, r4, r0
    lwz     r6, 0x24(r3)
    lhz     r4, 0x2(r4)
    lbzx    r4, r6, r4
    stb     r4, 0x0(r5)
branch_0x802e35f0:
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e3638
    lwz     r4, 0x34(r3)
    lwz     r6, 0x24(r3)
    add     r4, r4, r0
    lhz     r4, 0x2(r4)
    add     r6, r6, r7
    add     r4, r6, r4
    lbz     r4, -0x1(r4)
    stb     r4, 0x0(r5)
branch_0x802e3638:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e3694
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e3694
    fctiwz  f0, f2
    lwz     r4, 0x34(r3)
    lwz     r7, 0x24(r3)
    add     r4, r4, r0
    stfd    f0, 0x18(sp)
    lhz     r4, 0x2(r4)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    lbzx    r4, r7, r4
    stb     r4, 0x0(r5)
branch_0x802e3694:
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    lwz     r4, 0x34(r3)
    fcmpo   cr0, f1, f0
    add     r4, r4, r0
    lhz     r7, 0x4(r4)
    bge-    branch_0x802e36c0
    lwz     r6, 0x28(r3)
    lhz     r4, 0x6(r4)
    lbzx    r4, r6, r4
    stb     r4, 0x1(r5)
branch_0x802e36c0:
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e3708
    lwz     r4, 0x34(r3)
    lwz     r6, 0x28(r3)
    add     r4, r4, r0
    lhz     r4, 0x6(r4)
    add     r6, r6, r7
    add     r4, r6, r4
    lbz     r4, -0x1(r4)
    stb     r4, 0x1(r5)
branch_0x802e3708:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e3764
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e3764
    fctiwz  f0, f2
    lwz     r4, 0x34(r3)
    lwz     r7, 0x28(r3)
    add     r4, r4, r0
    stfd    f0, 0x18(sp)
    lhz     r4, 0x6(r4)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    lbzx    r4, r7, r4
    stb     r4, 0x1(r5)
branch_0x802e3764:
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    lwz     r4, 0x34(r3)
    fcmpo   cr0, f1, f0
    add     r4, r4, r0
    lhz     r7, 0x8(r4)
    bge-    branch_0x802e3790
    lwz     r6, 0x2c(r3)
    lhz     r4, 0xa(r4)
    lbzx    r4, r6, r4
    stb     r4, 0x2(r5)
branch_0x802e3790:
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e37d8
    lwz     r4, 0x34(r3)
    lwz     r6, 0x2c(r3)
    add     r4, r4, r0
    lhz     r4, 0xa(r4)
    add     r6, r6, r7
    add     r4, r6, r4
    lbz     r4, -0x1(r4)
    stb     r4, 0x2(r5)
branch_0x802e37d8:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e3834
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e3834
    fctiwz  f0, f2
    lwz     r4, 0x34(r3)
    lwz     r7, 0x2c(r3)
    add     r4, r4, r0
    stfd    f0, 0x18(sp)
    lhz     r4, 0xa(r4)
    lwz     r6, 0x1c(sp)
    add     r4, r6, r4
    lbzx    r4, r7, r4
    stb     r4, 0x2(r5)
branch_0x802e3834:
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    lwz     r4, 0x34(r3)
    fcmpo   cr0, f1, f0
    add     r4, r4, r0
    lhz     r7, 0xc(r4)
    bge-    branch_0x802e3860
    lwz     r6, 0x30(r3)
    lhz     r4, 0xe(r4)
    lbzx    r4, r6, r4
    stb     r4, 0x3(r5)
branch_0x802e3860:
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e38a8
    lwz     r4, 0x34(r3)
    lwz     r6, 0x30(r3)
    add     r4, r4, r0
    lhz     r4, 0xe(r4)
    add     r6, r6, r7
    add     r4, r6, r4
    lbz     r4, -0x1(r4)
    stb     r4, 0x3(r5)
branch_0x802e38a8:
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802e3904
    stw     r7, 0x1c(sp)
    lis     r4, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r4, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e3904
    fctiwz  f0, f2
    lwz     r4, 0x34(r3)
    lwz     r6, 0x30(r3)
    add     r3, r4, r0
    stfd    f0, 0x18(sp)
    lhz     r0, 0xe(r3)
    lwz     r3, 0x1c(sp)
    add     r0, r3, r0
    lbzx    r0, r6, r0
    stb     r0, 0x3(r5)
branch_0x802e3904:
    addi    sp, sp, 0x20
    blr


.globl getColor__14J3DAnmColorKeyCFUsP8_GXColor
getColor__14J3DAnmColorKeyCFUsP8_GXColor: # 0x802e390c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mulli   r31, r0, 0x18
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x34(r3)
    add     r3, r4, r31
    lhz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e3964
    bge-    branch_0x802e397c
    cmpwi   r0, 0x0
    bge-    branch_0x802e3958
    b       branch_0x802e397c

branch_0x802e3958:
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x802e39f0

branch_0x802e3964:
    lhz     r0, 0x2(r3)
    lwz     r3, 0x24(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x0(r30)
    b       branch_0x802e39f0

branch_0x802e397c:
    add     r4, r4, r31
    lwz     r5, 0x24(r29)
    lhz     r0, 0x2(r4)
    lfs     f1, 0x4(r29)
    slwi    r0, r0, 1
    add     r4, r5, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e39ac
    li      r0, 0x0
    stb     r0, 0x0(r30)
branch_0x802e39ac:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e39c0
    li      r0, 0xff
    stb     r0, 0x0(r30)
branch_0x802e39c0:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e39f0
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e39f0
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x0(r30)
branch_0x802e39f0:
    lwz     r5, 0x34(r29)
    add     r3, r5, r31
    lhz     r0, 0x6(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e3a20
    bge-    branch_0x802e3a38
    cmpwi   r0, 0x0
    bge-    branch_0x802e3a14
    b       branch_0x802e3a38

branch_0x802e3a14:
    li      r0, 0x0
    stb     r0, 0x1(r30)
    b       branch_0x802e3ab4

branch_0x802e3a20:
    lhz     r0, 0x8(r3)
    lwz     r3, 0x28(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x1(r30)
    b       branch_0x802e3ab4

branch_0x802e3a38:
    add     r3, r5, r31
    lwz     r4, 0x28(r29)
    lhz     r0, 0x8(r3)
    addi    r3, r31, 0x6
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e3a70
    li      r0, 0x0
    stb     r0, 0x1(r30)
branch_0x802e3a70:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e3a84
    li      r0, 0xff
    stb     r0, 0x1(r30)
branch_0x802e3a84:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e3ab4
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e3ab4
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x1(r30)
branch_0x802e3ab4:
    lwz     r5, 0x34(r29)
    add     r3, r5, r31
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e3ae4
    bge-    branch_0x802e3afc
    cmpwi   r0, 0x0
    bge-    branch_0x802e3ad8
    b       branch_0x802e3afc

branch_0x802e3ad8:
    li      r0, 0x0
    stb     r0, 0x2(r30)
    b       branch_0x802e3b78

branch_0x802e3ae4:
    lhz     r0, 0xe(r3)
    lwz     r3, 0x2c(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x2(r30)
    b       branch_0x802e3b78

branch_0x802e3afc:
    add     r3, r5, r31
    lwz     r4, 0x2c(r29)
    lhz     r0, 0xe(r3)
    addi    r3, r31, 0xc
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e3b34
    li      r0, 0x0
    stb     r0, 0x2(r30)
branch_0x802e3b34:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e3b48
    li      r0, 0xff
    stb     r0, 0x2(r30)
branch_0x802e3b48:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e3b78
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e3b78
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x2(r30)
branch_0x802e3b78:
    lwz     r5, 0x34(r29)
    add     r3, r5, r31
    lhz     r0, 0x12(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e3ba8
    bge-    branch_0x802e3bc0
    cmpwi   r0, 0x0
    bge-    branch_0x802e3b9c
    b       branch_0x802e3bc0

branch_0x802e3b9c:
    li      r0, 0x0
    stb     r0, 0x3(r30)
    b       branch_0x802e3c3c

branch_0x802e3ba8:
    lhz     r0, 0x14(r3)
    lwz     r3, 0x30(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x3(r30)
    b       branch_0x802e3c3c

branch_0x802e3bc0:
    add     r3, r5, r31
    lwz     r4, 0x30(r29)
    lhz     r0, 0x14(r3)
    addi    r3, r31, 0x12
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e3bf8
    li      r0, 0x0
    stb     r0, 0x3(r30)
branch_0x802e3bf8:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e3c0c
    li      r0, 0xff
    stb     r0, 0x3(r30)
branch_0x802e3c0c:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e3c3c
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e3c3c
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x3(r30)
branch_0x802e3c3c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl getTexNo__16J3DAnmTexPatternCFUsPUs
getTexNo__16J3DAnmTexPatternCFUsPUs: # 0x802e3c58
    stwu    sp, -0x20(sp)
    clrlslwi  r7, r4, 16, 3
    lfs     f0, 0x2ac(rtoc)
    lfs     f2, 0x4(r3)
    lwz     r4, 0x14(r3)
    fcmpo   cr0, f0, f2
    lhzx    r8, r4, r7
    cror    2, 0, 2
    bne-    branch_0x802e3cc4
    stw     r8, 0x1c(sp)
    lis     r0, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x802e3cc4
    fctiwz  f0, f2
    add     r4, r4, r7
    lhz     r0, 0x2(r4)
    lwz     r6, 0x10(r3)
    stfd    f0, 0x18(sp)
    lwz     r4, 0x1c(sp)
    add     r0, r4, r0
    slwi    r0, r0, 1
    lhzx    r0, r6, r0
    sth     r0, 0x0(r5)
branch_0x802e3cc4:
    lfs     f1, 0x4(r3)
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e3cf0
    lwz     r0, 0x14(r3)
    lwz     r6, 0x10(r3)
    add     r4, r0, r7
    lhz     r0, 0x2(r4)
    slwi    r0, r0, 1
    lhzx    r0, r6, r0
    sth     r0, 0x0(r5)
branch_0x802e3cf0:
    stw     r8, 0x1c(sp)
    lis     r0, 0x4330
    lfd     f1, 0x2c0(rtoc)
    stw     r0, 0x18(sp)
    lfs     f2, 0x4(r3)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x802e3d3c
    lwz     r0, 0x14(r3)
    lwz     r4, 0x10(r3)
    add     r3, r0, r7
    lhz     r0, 0x2(r3)
    add     r3, r8, r0
    subi    r0, r3, 0x1
    slwi    r0, r0, 1
    lhzx    r0, r4, r0
    sth     r0, 0x0(r5)
branch_0x802e3d3c:
    addi    sp, sp, 0x20
    blr


.globl searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData: # 0x802e3d44
    mflr    r0
    lis     r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    subi    r31, r5, 0x1
    li      r29, 0x0
    b       branch_0x802e3db0

branch_0x802e3d6c:
    lwz     r30, 0xb4(r28)
    mr      r4, r29
    lwz     r3, 0x20(r27)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, -0x1
    beq-    branch_0x802e3da0
    lwz     r4, 0x1c(r27)
    clrlslwi  r0, r29, 16, 1
    sthx    r3, r4, r0
    b       branch_0x802e3dac

branch_0x802e3da0:
    lwz     r3, 0x1c(r27)
    clrlslwi  r0, r29, 16, 1
    sthx    r31, r3, r0
branch_0x802e3dac:
    addi    r29, r29, 0x1
branch_0x802e3db0:
    lhz     r0, 0x1a(r27)
    clrlwi  r3, r29, 16
    cmplw   r3, r0
    blt+    branch_0x802e3d6c
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData: # 0x802e3dd4
    mflr    r0
    lis     r6, 0x1
    stw     r0, 0x4(sp)
    lis     r5, 0x5555
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    subi    r29, r6, 0x1
    addi    r28, r5, 0x5556
    li      r26, 0x0
    b       branch_0x802e3e48

branch_0x802e3e04:
    lwz     r27, 0xb4(r31)
    mr      r4, r26
    lwz     r3, 0x38(r30)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, -0x1
    beq-    branch_0x802e3e38
    lwz     r4, 0x34(r30)
    clrlslwi  r0, r26, 16, 1
    sthx    r3, r4, r0
    b       branch_0x802e3e44

branch_0x802e3e38:
    lwz     r3, 0x34(r30)
    clrlslwi  r0, r26, 16, 1
    sthx    r29, r3, r0
branch_0x802e3e44:
    addi    r26, r26, 0x1
branch_0x802e3e48:
    lhz     r0, 0x14(r30)
    clrlwi  r4, r26, 16
    mulhw   r3, r28, r0
    srwi    r0, r3, 31
    add     r0, r3, r0
    clrlwi  r0, r0, 16
    cmplw   r4, r0
    blt+    branch_0x802e3e04
    lis     r4, 0x1
    lis     r3, 0x5555
    subi    r28, r4, 0x1
    addi    r29, r3, 0x5556
    li      r26, 0x0
    b       branch_0x802e3ec4

branch_0x802e3e80:
    lwz     r27, 0xb4(r31)
    mr      r4, r26
    lwz     r3, 0x64(r30)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, -0x1
    beq-    branch_0x802e3eb4
    lwz     r4, 0x60(r30)
    clrlslwi  r0, r26, 16, 1
    sthx    r3, r4, r0
    b       branch_0x802e3ec0

branch_0x802e3eb4:
    lwz     r3, 0x60(r30)
    clrlslwi  r0, r26, 16, 1
    sthx    r28, r3, r0
branch_0x802e3ec0:
    addi    r26, r26, 0x1
branch_0x802e3ec4:
    lhz     r0, 0x54(r30)
    clrlwi  r4, r26, 16
    mulhw   r3, r29, r0
    srwi    r0, r3, 31
    add     r0, r3, r0
    clrlwi  r0, r0, 16
    cmplw   r4, r0
    blt+    branch_0x802e3e80
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10
getTevColorReg__15J3DAnmTevRegKeyCFUsP11_GXColorS10: # 0x802e3ef8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mulli   r31, r0, 0x1c
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x34(r3)
    add     r3, r4, r31
    lhz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e3f50
    bge-    branch_0x802e3f68
    cmpwi   r0, 0x0
    bge-    branch_0x802e3f44
    b       branch_0x802e3f68

branch_0x802e3f44:
    li      r0, 0x0
    sth     r0, 0x0(r30)
    b       branch_0x802e3fdc

branch_0x802e3f50:
    lhz     r0, 0x2(r3)
    lwz     r3, 0x3c(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    sth     r0, 0x0(r30)
    b       branch_0x802e3fdc

branch_0x802e3f68:
    add     r4, r4, r31
    lwz     r5, 0x3c(r29)
    lhz     r0, 0x2(r4)
    lfs     f1, 0x4(r29)
    slwi    r0, r0, 1
    add     r4, r5, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e3f98
    li      r0, -0x400
    sth     r0, 0x0(r30)
branch_0x802e3f98:
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e3fac
    li      r0, 0x3ff
    sth     r0, 0x0(r30)
branch_0x802e3fac:
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e3fdc
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e3fdc
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x0(r30)
branch_0x802e3fdc:
    lwz     r5, 0x34(r29)
    add     r3, r5, r31
    lhz     r0, 0x6(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e400c
    bge-    branch_0x802e4024
    cmpwi   r0, 0x0
    bge-    branch_0x802e4000
    b       branch_0x802e4024

branch_0x802e4000:
    li      r0, 0x0
    sth     r0, 0x2(r30)
    b       branch_0x802e40a0

branch_0x802e400c:
    lhz     r0, 0x8(r3)
    lwz     r3, 0x40(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    sth     r0, 0x2(r30)
    b       branch_0x802e40a0

branch_0x802e4024:
    add     r3, r5, r31
    lwz     r4, 0x40(r29)
    lhz     r0, 0x8(r3)
    addi    r3, r31, 0x6
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e405c
    li      r0, -0x400
    sth     r0, 0x2(r30)
branch_0x802e405c:
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e4070
    li      r0, 0x3ff
    sth     r0, 0x2(r30)
branch_0x802e4070:
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e40a0
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e40a0
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x2(r30)
branch_0x802e40a0:
    lwz     r5, 0x34(r29)
    add     r3, r5, r31
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e40d0
    bge-    branch_0x802e40e8
    cmpwi   r0, 0x0
    bge-    branch_0x802e40c4
    b       branch_0x802e40e8

branch_0x802e40c4:
    li      r0, 0x0
    sth     r0, 0x4(r30)
    b       branch_0x802e4164

branch_0x802e40d0:
    lhz     r0, 0xe(r3)
    lwz     r3, 0x44(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    sth     r0, 0x4(r30)
    b       branch_0x802e4164

branch_0x802e40e8:
    add     r3, r5, r31
    lwz     r4, 0x44(r29)
    lhz     r0, 0xe(r3)
    addi    r3, r31, 0xc
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e4120
    li      r0, -0x400
    sth     r0, 0x4(r30)
branch_0x802e4120:
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e4134
    li      r0, 0x3ff
    sth     r0, 0x4(r30)
branch_0x802e4134:
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4164
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e4164
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x4(r30)
branch_0x802e4164:
    lwz     r5, 0x34(r29)
    add     r3, r5, r31
    lhz     r0, 0x12(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e4194
    bge-    branch_0x802e41ac
    cmpwi   r0, 0x0
    bge-    branch_0x802e4188
    b       branch_0x802e41ac

branch_0x802e4188:
    li      r0, 0x0
    sth     r0, 0x6(r30)
    b       branch_0x802e4228

branch_0x802e4194:
    lhz     r0, 0x14(r3)
    lwz     r3, 0x48(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    sth     r0, 0x6(r30)
    b       branch_0x802e4228

branch_0x802e41ac:
    add     r3, r5, r31
    lwz     r4, 0x48(r29)
    lhz     r0, 0x14(r3)
    addi    r3, r31, 0x12
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e41e4
    li      r0, -0x400
    sth     r0, 0x6(r30)
branch_0x802e41e4:
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e41f8
    li      r0, 0x3ff
    sth     r0, 0x6(r30)
branch_0x802e41f8:
    lfs     f0, 0x2cc(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4228
    lfs     f0, 0x2d0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e4228
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    sth     r0, 0x6(r30)
branch_0x802e4228:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl getTevKonstReg__15J3DAnmTevRegKeyCFUsP8_GXColor
getTevKonstReg__15J3DAnmTevRegKeyCFUsP8_GXColor: # 0x802e4244
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mulli   r31, r0, 0x1c
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x38(r3)
    add     r3, r4, r31
    lhz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e429c
    bge-    branch_0x802e42b4
    cmpwi   r0, 0x0
    bge-    branch_0x802e4290
    b       branch_0x802e42b4

branch_0x802e4290:
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x802e4328

branch_0x802e429c:
    lhz     r0, 0x2(r3)
    lwz     r3, 0x4c(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x0(r30)
    b       branch_0x802e4328

branch_0x802e42b4:
    add     r4, r4, r31
    lwz     r5, 0x4c(r29)
    lhz     r0, 0x2(r4)
    lfs     f1, 0x4(r29)
    slwi    r0, r0, 1
    add     r4, r5, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e42e4
    li      r0, 0x0
    stb     r0, 0x0(r30)
branch_0x802e42e4:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e42f8
    li      r0, 0xff
    stb     r0, 0x0(r30)
branch_0x802e42f8:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4328
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e4328
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x0(r30)
branch_0x802e4328:
    lwz     r5, 0x38(r29)
    add     r3, r5, r31
    lhz     r0, 0x6(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e4358
    bge-    branch_0x802e4370
    cmpwi   r0, 0x0
    bge-    branch_0x802e434c
    b       branch_0x802e4370

branch_0x802e434c:
    li      r0, 0x0
    stb     r0, 0x1(r30)
    b       branch_0x802e43ec

branch_0x802e4358:
    lhz     r0, 0x8(r3)
    lwz     r3, 0x50(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x1(r30)
    b       branch_0x802e43ec

branch_0x802e4370:
    add     r3, r5, r31
    lwz     r4, 0x50(r29)
    lhz     r0, 0x8(r3)
    addi    r3, r31, 0x6
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e43a8
    li      r0, 0x0
    stb     r0, 0x1(r30)
branch_0x802e43a8:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e43bc
    li      r0, 0xff
    stb     r0, 0x1(r30)
branch_0x802e43bc:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e43ec
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e43ec
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x1(r30)
branch_0x802e43ec:
    lwz     r5, 0x38(r29)
    add     r3, r5, r31
    lhz     r0, 0xc(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e441c
    bge-    branch_0x802e4434
    cmpwi   r0, 0x0
    bge-    branch_0x802e4410
    b       branch_0x802e4434

branch_0x802e4410:
    li      r0, 0x0
    stb     r0, 0x2(r30)
    b       branch_0x802e44b0

branch_0x802e441c:
    lhz     r0, 0xe(r3)
    lwz     r3, 0x54(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x2(r30)
    b       branch_0x802e44b0

branch_0x802e4434:
    add     r3, r5, r31
    lwz     r4, 0x54(r29)
    lhz     r0, 0xe(r3)
    addi    r3, r31, 0xc
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e446c
    li      r0, 0x0
    stb     r0, 0x2(r30)
branch_0x802e446c:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e4480
    li      r0, 0xff
    stb     r0, 0x2(r30)
branch_0x802e4480:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e44b0
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e44b0
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x2(r30)
branch_0x802e44b0:
    lwz     r5, 0x38(r29)
    add     r3, r5, r31
    lhz     r0, 0x12(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802e44e0
    bge-    branch_0x802e44f8
    cmpwi   r0, 0x0
    bge-    branch_0x802e44d4
    b       branch_0x802e44f8

branch_0x802e44d4:
    li      r0, 0x0
    stb     r0, 0x3(r30)
    b       branch_0x802e4574

branch_0x802e44e0:
    lhz     r0, 0x14(r3)
    lwz     r3, 0x58(r29)
    slwi    r0, r0, 1
    lhax    r0, r3, r0
    stb     r0, 0x3(r30)
    b       branch_0x802e4574

branch_0x802e44f8:
    add     r3, r5, r31
    lwz     r4, 0x58(r29)
    lhz     r0, 0x14(r3)
    addi    r3, r31, 0x12
    lfs     f1, 0x4(r29)
    add     r3, r5, r3
    slwi    r0, r0, 1
    add     r4, r4, r0
    bl      J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e4530
    li      r0, 0x0
    stb     r0, 0x3(r30)
branch_0x802e4530:
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802e4544
    li      r0, 0xff
    stb     r0, 0x3(r30)
branch_0x802e4544:
    lfs     f0, 0x2ac(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4574
    lfs     f0, 0x2c8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802e4574
    fctiwz  f0, f1
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stb     r0, 0x3(r30)
branch_0x802e4574:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData: # 0x802e4590
    mflr    r0
    lis     r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    subi    r29, r5, 0x1
    li      r27, 0x0
    b       branch_0x802e45fc

branch_0x802e45b8:
    lwz     r28, 0xb4(r31)
    mr      r4, r27
    lwz     r3, 0x28(r30)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, -0x1
    beq-    branch_0x802e45ec
    lwz     r4, 0x24(r30)
    clrlslwi  r0, r27, 16, 1
    sthx    r3, r4, r0
    b       branch_0x802e45f8

branch_0x802e45ec:
    lwz     r3, 0x24(r30)
    clrlslwi  r0, r27, 16, 1
    sthx    r29, r3, r0
branch_0x802e45f8:
    addi    r27, r27, 0x1
branch_0x802e45fc:
    lhz     r0, 0x10(r30)
    clrlwi  r3, r27, 16
    cmplw   r3, r0
    blt+    branch_0x802e45b8
    lis     r3, 0x1
    subi    r29, r3, 0x1
    li      r27, 0x0
    b       branch_0x802e4660

branch_0x802e461c:
    lwz     r28, 0xb4(r31)
    mr      r4, r27
    lwz     r3, 0x30(r30)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, -0x1
    beq-    branch_0x802e4650
    lwz     r4, 0x2c(r30)
    clrlslwi  r0, r27, 16, 1
    sthx    r3, r4, r0
    b       branch_0x802e465c

branch_0x802e4650:
    lwz     r3, 0x2c(r30)
    clrlslwi  r0, r27, 16, 1
    sthx    r29, r3, r0
branch_0x802e465c:
    addi    r27, r27, 0x1
branch_0x802e4660:
    lhz     r0, 0x12(r30)
    clrlwi  r3, r27, 16
    cmplw   r3, r0
    blt+    branch_0x802e461c
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__14J3DAnmColorKeyFv
__dt__14J3DAnmColorKeyFv: # 0x802e4684
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e46d8
    lis     r3, 0x803e
    addi    r0, r3, 0x1290
    stw     r0, 0xc(r31)
    beq-    branch_0x802e46c8
    lis     r3, 0x803e
    addi    r0, r3, 0x12a0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e46c8
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e46c8:
    extsh.  r0, r4
    ble-    branch_0x802e46d8
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e46d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getColor__11J3DAnmColorCFUsP8_GXColor
getColor__11J3DAnmColorCFUsP8_GXColor: # 0x802e46f0
    blr


.globl __dt__11J3DAnmColorFv
__dt__11J3DAnmColorFv: # 0x802e46f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e4738
    lis     r3, 0x803e
    addi    r0, r3, 0x12a0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4728
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4728:
    extsh.  r0, r4
    ble-    branch_0x802e4738
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e4738:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15J3DAnmColorFullFv
__dt__15J3DAnmColorFullFv: # 0x802e4750
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e47a4
    lis     r3, 0x803e
    addi    r0, r3, 0x12b0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4794
    lis     r3, 0x803e
    addi    r0, r3, 0x12a0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4794
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4794:
    extsh.  r0, r4
    ble-    branch_0x802e47a4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e47a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17J3DAnmVtxColorKeyFv
__dt__17J3DAnmVtxColorKeyFv: # 0x802e47bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e4810
    lis     r3, 0x803e
    addi    r0, r3, 0x12c0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4800
    lis     r3, 0x803e
    addi    r0, r3, 0x12d0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4800
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4800:
    extsh.  r0, r4
    ble-    branch_0x802e4810
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e4810:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14J3DAnmVtxColorFv
__dt__14J3DAnmVtxColorFv: # 0x802e4828
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e486c
    lis     r3, 0x803e
    addi    r0, r3, 0x12d0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e485c
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e485c:
    extsh.  r0, r4
    ble-    branch_0x802e486c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e486c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18J3DAnmVtxColorFullFv
__dt__18J3DAnmVtxColorFullFv: # 0x802e4884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e48d8
    lis     r3, 0x803e
    addi    r0, r3, 0x12e0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e48c8
    lis     r3, 0x803e
    addi    r0, r3, 0x12d0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e48c8
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e48c8:
    extsh.  r0, r4
    ble-    branch_0x802e48d8
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e48d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16J3DAnmClusterKeyFv
__dt__16J3DAnmClusterKeyFv: # 0x802e48f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e4944
    lis     r3, 0x803e
    addi    r0, r3, 0x12f0
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4934
    lis     r3, 0x803e
    addi    r0, r3, 0x1300
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4934
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4934:
    extsh.  r0, r4
    ble-    branch_0x802e4944
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e4944:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13J3DAnmClusterFv
__dt__13J3DAnmClusterFv: # 0x802e495c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e49a0
    lis     r3, 0x803e
    addi    r0, r3, 0x1300
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4990
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4990:
    extsh.  r0, r4
    ble-    branch_0x802e49a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e49a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17J3DAnmClusterFullFv
__dt__17J3DAnmClusterFullFv: # 0x802e49b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e4a0c
    lis     r3, 0x803e
    addi    r0, r3, 0x1310
    stw     r0, 0xc(r31)
    beq-    branch_0x802e49fc
    lis     r3, 0x803e
    addi    r0, r3, 0x1300
    stw     r0, 0xc(r31)
    beq-    branch_0x802e49fc
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e49fc:
    extsh.  r0, r4
    ble-    branch_0x802e4a0c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e4a0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18J3DAnmTransformKeyFv
__dt__18J3DAnmTransformKeyFv: # 0x802e4a24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e4a78
    lis     r3, 0x803e
    addi    r0, r3, 0x1320
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4a68
    lis     r3, 0x803e
    addi    r0, r3, 0x1334
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4a68
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4a68:
    extsh.  r0, r4
    ble-    branch_0x802e4a78
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e4a78:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15J3DAnmTransformFv
__dt__15J3DAnmTransformFv: # 0x802e4a90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e4ad4
    lis     r3, 0x803e
    addi    r0, r3, 0x1334
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4ac4
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4ac4:
    extsh.  r0, r4
    ble-    branch_0x802e4ad4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e4ad4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19J3DAnmTransformFullFv
__dt__19J3DAnmTransformFullFv: # 0x802e4aec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e4b40
    lis     r3, 0x803e
    addi    r0, r3, 0x1344
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4b30
    lis     r3, 0x803e
    addi    r0, r3, 0x1334
    stw     r0, 0xc(r31)
    beq-    branch_0x802e4b30
    lis     r3, 0x803e
    addi    r0, r3, 0x1354
    stw     r0, 0xc(r31)
branch_0x802e4b30:
    extsh.  r0, r4
    ble-    branch_0x802e4b40
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e4b40:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs
J3DGetKeyFrameInterpolation_s___FfP18J3DAnmKeyTableBasePs: # 0x802e4b58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    lhz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802e4cf4
    lha     r0, 0x0(r4)
    lis     r5, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r5, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e4bb4
    lha     r0, 0x2(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r5, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e4e74

branch_0x802e4bb4:
    lhz     r6, 0x0(r3)
    subi    r0, r6, 0x1
    mulli   r3, r0, 0x6
    lhax    r0, r4, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r5, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4c04
    add     r3, r4, r3
    lha     r0, 0x2(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r5, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e4e74

branch_0x802e4c04:
    mr      r7, r6
    b       branch_0x802e4c4c

branch_0x802e4c0c:
    srawi   r6, r7, 1
    addze   r6, r6
    mulli   r3, r6, 0x6
    lhax    r0, r4, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r5, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e4c48
    add     r4, r4, r3
    subf    r7, r6, r7
    b       branch_0x802e4c4c

branch_0x802e4c48:
    mr      r7, r6
branch_0x802e4c4c:
    cmpwi   r7, 0x1
    bgt+    branch_0x802e4c0c
    lha     r7, 0x2(r4)
    lis     r8, 0x4330
    lha     r0, 0x0(r4)
    xoris   r7, r7, 0x8000
    lha     r5, 0x6(r4)
    stw     r7, 0x3c(sp)
    xoris   r9, r0, 0x8000
    lha     r6, 0x4(r4)
    lha     r3, 0x8(r4)
    lha     r0, 0xa(r4)
    xoris   r4, r5, 0x8000
    stw     r4, 0x2c(sp)
    xoris   r6, r6, 0x8000
    xoris   r3, r3, 0x8000
    stw     r8, 0x38(sp)
    xoris   r0, r0, 0x8000
    lfd     f7, 0x2b8(rtoc)
    stw     r9, 0x44(sp)
    lfd     f0, 0x38(sp)
    stw     r6, 0x34(sp)
    fsubs   f3, f0, f7
    stw     r3, 0x24(sp)
    stw     r0, 0x1c(sp)
    stw     r8, 0x28(sp)
    stw     r8, 0x40(sp)
    lfd     f0, 0x28(sp)
    stw     r8, 0x30(sp)
    lfd     f2, 0x40(sp)
    fsubs   f5, f0, f7
    stw     r8, 0x20(sp)
    lfd     f4, 0x30(sp)
    fsubs   f2, f2, f7
    stw     r8, 0x18(sp)
    lfd     f6, 0x20(sp)
    fsubs   f4, f4, f7
    lfd     f0, 0x18(sp)
    fsubs   f6, f6, f7
    fsubs   f7, f0, f7
    bl      JMAHermiteInterpolation__Ffffffff
    b       branch_0x802e4e74

branch_0x802e4cf4:
    lha     r0, 0x0(r4)
    lis     r5, 0x4330
    lfd     f2, 0x2b8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e4d38
    lha     r0, 0x2(r4)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e4e74

branch_0x802e4d38:
    lhz     r6, 0x0(r3)
    subi    r0, r6, 0x1
    slwi    r3, r0, 3
    lhax    r0, r4, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4d88
    add     r3, r4, r3
    lha     r0, 0x2(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f2
    b       branch_0x802e4e74

branch_0x802e4d88:
    mr      r7, r6
    b       branch_0x802e4dd0

branch_0x802e4d90:
    srawi   r6, r7, 1
    addze   r6, r6
    slwi    r3, r6, 3
    lhax    r0, r4, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    stw     r5, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e4dcc
    add     r4, r4, r3
    subf    r7, r6, r7
    b       branch_0x802e4dd0

branch_0x802e4dcc:
    mr      r7, r6
branch_0x802e4dd0:
    cmpwi   r7, 0x1
    bgt+    branch_0x802e4d90
    lha     r7, 0x2(r4)
    lis     r8, 0x4330
    lha     r0, 0x0(r4)
    xoris   r7, r7, 0x8000
    lha     r5, 0x8(r4)
    stw     r7, 0x24(sp)
    xoris   r9, r0, 0x8000
    lha     r6, 0x6(r4)
    lha     r3, 0xa(r4)
    lha     r0, 0xc(r4)
    xoris   r4, r5, 0x8000
    stw     r4, 0x34(sp)
    xoris   r6, r6, 0x8000
    xoris   r3, r3, 0x8000
    stw     r8, 0x20(sp)
    xoris   r0, r0, 0x8000
    lfd     f7, 0x2b8(rtoc)
    stw     r9, 0x1c(sp)
    lfd     f0, 0x20(sp)
    stw     r6, 0x2c(sp)
    fsubs   f3, f0, f7
    stw     r3, 0x3c(sp)
    stw     r0, 0x44(sp)
    stw     r8, 0x30(sp)
    stw     r8, 0x18(sp)
    lfd     f0, 0x30(sp)
    stw     r8, 0x28(sp)
    lfd     f2, 0x18(sp)
    fsubs   f5, f0, f7
    stw     r8, 0x38(sp)
    lfd     f4, 0x28(sp)
    fsubs   f2, f2, f7
    stw     r8, 0x40(sp)
    lfd     f6, 0x38(sp)
    fsubs   f4, f4, f7
    lfd     f0, 0x40(sp)
    fsubs   f6, f6, f7
    fsubs   f7, f0, f7
    bl      JMAHermiteInterpolation__Ffffffff
branch_0x802e4e74:
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf
J3DGetKeyFrameInterpolation_f___FfP18J3DAnmKeyTableBasePf: # 0x802e4e84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802e4f34
    lfs     f0, 0x0(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e4eb0
    lfs     f1, 0x4(r4)
    b       branch_0x802e4fc8

branch_0x802e4eb0:
    lhz     r3, 0x0(r3)
    subi    r0, r3, 0x1
    mulli   r0, r0, 0xc
    lfsx    f0, r4, r0
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4ed8
    add     r3, r4, r0
    lfs     f1, 0x4(r3)
    b       branch_0x802e4fc8

branch_0x802e4ed8:
    mr      r5, r3
    b       branch_0x802e4f0c

branch_0x802e4ee0:
    srawi   r3, r5, 1
    addze   r3, r3
    mulli   r0, r3, 0xc
    lfsx    f0, r4, r0
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e4f08
    add     r4, r4, r0
    subf    r5, r3, r5
    b       branch_0x802e4f0c

branch_0x802e4f08:
    mr      r5, r3
branch_0x802e4f0c:
    cmpwi   r5, 0x1
    bgt+    branch_0x802e4ee0
    lfs     f2, 0x0(r4)
    lfs     f3, 0x4(r4)
    lfs     f4, 0x8(r4)
    lfs     f5, 0xc(r4)
    lfs     f6, 0x10(r4)
    lfs     f7, 0x14(r4)
    bl      JMAHermiteInterpolation__Ffffffff
    b       branch_0x802e4fc8

branch_0x802e4f34:
    lfs     f0, 0x0(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802e4f48
    lfs     f1, 0x4(r4)
    b       branch_0x802e4fc8

branch_0x802e4f48:
    lhz     r3, 0x0(r3)
    subi    r0, r3, 0x1
    slwi    r0, r0, 4
    lfsx    f0, r4, r0
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802e4f70
    add     r3, r4, r0
    lfs     f1, 0x4(r3)
    b       branch_0x802e4fc8

branch_0x802e4f70:
    mr      r5, r3
    b       branch_0x802e4fa4

branch_0x802e4f78:
    srawi   r3, r5, 1
    addze   r3, r3
    slwi    r0, r3, 4
    lfsx    f0, r4, r0
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x802e4fa0
    add     r4, r4, r0
    subf    r5, r3, r5
    b       branch_0x802e4fa4

branch_0x802e4fa0:
    mr      r5, r3
branch_0x802e4fa4:
    cmpwi   r5, 0x1
    bgt+    branch_0x802e4f78
    lfs     f2, 0x0(r4)
    lfs     f3, 0x4(r4)
    lfs     f4, 0xc(r4)
    lfs     f5, 0x10(r4)
    lfs     f6, 0x14(r4)
    lfs     f7, 0x18(r4)
    bl      JMAHermiteInterpolation__Ffffffff
branch_0x802e4fc8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

