
.globl updateCoin__8TNpcCoinFv
updateCoin__8TNpcCoinFv: # 0x802161e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8021636c
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x80216230
    cmplwi  r0, 0x2
    beq-    branch_0x80216230
    li      r4, 0x0
branch_0x80216230:
    clrlwi. r0, r4, 24
    bne-    branch_0x80216260
    lbz     r4, 0x124(r5)
    li      r0, 0x1
    cmplwi  r4, 0x3
    beq-    branch_0x80216254
    cmplwi  r4, 0x4
    beq-    branch_0x80216254
    li      r0, 0x0
branch_0x80216254:
    clrlwi. r0, r0, 24
    bne-    branch_0x80216260
    li      r3, 0x0
branch_0x80216260:
    clrlwi. r0, r3, 24
    bne-    branch_0x8021636c
    lwz     r3, 0x4(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8021636c
    lwz     r3, 0x0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802162ec
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r31)
    li      r0, 0x0
    lwz     r4, 0x8(r31)
    lwz     r3, 0xc(r31)
    stw     r4, 0x10(r5)
    stw     r3, 0x14(r5)
    lwz     r3, 0x10(r31)
    stw     r3, 0x18(r5)
    lfs     f2, 0x1c(r31)
    lfs     f1, 0x18(r31)
    lwz     r4, 0x0(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xac(r4)
    stfs    f1, 0xb0(r4)
    stfs    f2, 0xb4(r4)
    lwz     r3, 0xf0(r4)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r4)
    stw     r0, 0x0(r31)
    b       branch_0x80216338

branch_0x802162ec:
    lis     r4, 0x2000
    lwz     r3, -0x62b0(r13)
    lfs     f1, 0x8(r31)
    addi    r4, r4, 0xe
    lfs     f2, 0xc(r31)
    li      r5, 0x1
    lfs     f3, 0x10(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    cmplwi  r3, 0x0
    beq-    branch_0x80216338
    lfs     f2, 0x1c(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xac(r3)
    stfs    f1, 0xb0(r3)
    stfs    f2, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
branch_0x80216338:
    lis     r30, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r30, 0x77f9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8021636c
    subi    r3, r30, 0x77f9
    addi    r4, r31, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8021636c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl requestAppearCoin__8TNpcCoinFRC3Vecfi
requestAppearCoin__8TNpcCoinFRC3Vecfi: # 0x80216384
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    stw     r5, 0x4(r3)
    li      r3, 0x3552
    lfs     f0, 0x0(r4)
    stfs    f0, 0x8(r31)
    lfs     f0, 0x4(r4)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x10(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfs     f0, -0x19c0(rtoc)
    lfsx    f2, r4, r0
    lfsx    f3, r3, r0
    stfs    f0, 0x14(r31)
    stfs    f3, 0x18(r31)
    stfs    f2, 0x1c(r31)
    lfs     f0, -0x19bc(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r5, r3, 16
    lfs     f4, 0x14(r31)
    sraw    r0, r5, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lwz     r4, -0x5ea4(r13)
    lfs     f1, 0x1c(r31)
    fneg    f3, f4
    lfsx    f0, r3, r0
    lfsx    f2, r4, r0
    fmuls   f0, f1, f0
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x14(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x1c(r31)
    slwi    r0, r0, 2
    lwz     r4, -0x5ea8(r13)
    lfsx    f0, r3, r0
    lfsx    f2, r4, r0
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x14(r31)
    lfs     f1, -0x19b8(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(r31)
    lfs     f0, 0x18(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x18(r31)
    lfs     f0, 0x1c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(r31)
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802165e0
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x802164b0
    cmplwi  r0, 0x2
    beq-    branch_0x802164b0
    li      r4, 0x0
branch_0x802164b0:
    clrlwi. r0, r4, 24
    bne-    branch_0x802164e0
    lbz     r4, 0x124(r5)
    li      r0, 0x1
    cmplwi  r4, 0x3
    beq-    branch_0x802164d4
    cmplwi  r4, 0x4
    beq-    branch_0x802164d4
    li      r0, 0x0
branch_0x802164d4:
    clrlwi. r0, r0, 24
    bne-    branch_0x802164e0
    li      r3, 0x0
branch_0x802164e0:
    clrlwi. r0, r3, 24
    beq-    branch_0x802164f4
    li      r0, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x802165e0

branch_0x802164f4:
    lwz     r3, 0x0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80216560
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r31)
    li      r0, 0x0
    lwz     r4, 0x8(r31)
    lwz     r3, 0xc(r31)
    stw     r4, 0x10(r5)
    stw     r3, 0x14(r5)
    lwz     r3, 0x10(r31)
    stw     r3, 0x18(r5)
    lfs     f2, 0x1c(r31)
    lfs     f1, 0x18(r31)
    lwz     r4, 0x0(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xac(r4)
    stfs    f1, 0xb0(r4)
    stfs    f2, 0xb4(r4)
    lwz     r3, 0xf0(r4)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r4)
    stw     r0, 0x0(r31)
    b       branch_0x802165ac

branch_0x80216560:
    lis     r4, 0x2000
    lwz     r3, -0x62b0(r13)
    lfs     f1, 0x8(r31)
    addi    r4, r4, 0xe
    lfs     f2, 0xc(r31)
    li      r5, 0x1
    lfs     f3, 0x10(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    cmplwi  r3, 0x0
    beq-    branch_0x802165ac
    lfs     f2, 0x1c(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xac(r3)
    stfs    f1, 0xb0(r3)
    stfs    f2, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
branch_0x802165ac:
    lis     r30, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r30, 0x77f9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802165e0
    subi    r3, r30, 0x77f9
    addi    r4, r31, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802165e0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __ct__8TNpcCoinFi
__ct__8TNpcCoinFi: # 0x802165f8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    li      r4, 0x0
    stw     r0, 0x4(r31)
    lfs     f0, -0x19c0(rtoc)
    stfs    f0, 0x8(r31)
    stfs    f0, 0xc(r31)
    stfs    f0, 0x10(r31)
    stfs    f0, 0x14(r31)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x1c(r31)
    bl      newAndRegisterObjByEventID__18TMapObjBaseManagerFUlPCc
    stw     r3, 0x0(r31)
    lwz     r3, 0x0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_NpcCoin_cpp
__sinit_NpcCoin_cpp: # 0x80216670
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4f88
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802166b8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802166b8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802166e8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802166e8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80216718
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80216718:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80216748
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80216748:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80216778
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80216778:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802167a8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802167a8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802167d8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802167d8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80216808
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80216808:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80216838
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80216838:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80216868
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80216868:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80216898
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80216898:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802168c8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802168c8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802168f8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802168f8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80216928
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80216928:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80216958
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80216958:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
