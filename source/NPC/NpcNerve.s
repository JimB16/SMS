
.globl __dt__18TNerveNPCMareStandFv
__dt__18TNerveNPCMareStandFv: # 0x8020b958
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020b99c
    lis     r3, __vvt__18TNerveNPCMareStand@ha
    addi    r0, r3, __vvt__18TNerveNPCMareStand@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020b98c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020b98c:
    extsh.  r0, r4
    ble-    branch_0x8020b99c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020b99c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveNPCMareStandCFP24TSpineBase_10TLiveActor_
execute__18TNerveNPCMareStandCFP24TSpineBase_10TLiveActor_: # 0x8020b9b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020b9dc
    mr      r3, r31
    bl      npcMareStandIn__8TBaseNPCFv
branch_0x8020b9dc:
    mr      r3, r31
    bl      npcMareStanding__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020b9f4
    li      r3, 0x1
    b       branch_0x8020b9f8

branch_0x8020b9f4:
    li      r3, 0x0
branch_0x8020b9f8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__18TNerveNPCMareStandFv
theNerve__18TNerveNPCMareStandFv: # 0x8020ba0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6178(r13)
    extsb.  r0, r0
    bne-    branch_0x8020ba5c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveNPCMareStand@ha
    stw     r0, R13Off_m0x6174(r13)
    addi    r0, r3, __vvt__18TNerveNPCMareStand@l
    lis     r4, __dt__18TNerveNPCMareStandFv@ha
    stw     r0, R13Off_m0x6174(r13)
    lis     r3, unk_803faefc@ha
    addi    r5, r3, unk_803faefc@l
    addi    r4, r4, __dt__18TNerveNPCMareStandFv@l
    addi    r3, r13, R13Off_m0x6174
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6178(r13)
branch_0x8020ba5c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6174
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__14TNerveNPCBlownCFP24TSpineBase_10TLiveActor_
execute__14TNerveNPCBlownCFP24TSpineBase_10TLiveActor_: # 0x8020ba70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020baa4
    mr      r3, r29
    bl      npcBlownIn__8TBaseNPCFv
branch_0x8020baa4:
    mr      r3, r29
    bl      npcBlowning__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020bb64
    li      r30, 0x1
    addi    r3, r29, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020badc
    mr      r3, r29
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020badc
    li      r30, 0x0
branch_0x8020badc:
    clrlwi. r0, r30, 24
    beq-    branch_0x8020bb5c
    lbz     r0, R13Off_m0x6178(r13)
    extsb.  r0, r0
    bne-    branch_0x8020bb28
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveNPCMareStand@ha
    stw     r0, R13Off_m0x6174(r13)
    addi    r0, r3, __vvt__18TNerveNPCMareStand@l
    lis     r4, __dt__18TNerveNPCMareStandFv@ha
    stw     r0, R13Off_m0x6174(r13)
    lis     r3, unk_803faefc@ha
    addi    r5, r3, unk_803faefc@l
    addi    r4, r4, __dt__18TNerveNPCMareStandFv@l
    addi    r3, r13, R13Off_m0x6174
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6178(r13)
branch_0x8020bb28:
    addi    r4, r13, R13Off_m0x6174
    cmplwi  r4, 0x0
    beq-    branch_0x8020bb5c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8020bb5c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8020bb5c:
    li      r3, 0x1
    b       branch_0x8020bb68

branch_0x8020bb64:
    li      r3, 0x0
branch_0x8020bb68:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl theNerve__14TNerveNPCBlownFv
theNerve__14TNerveNPCBlownFv: # 0x8020bb84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6180(r13)
    extsb.  r0, r0
    bne-    branch_0x8020bbd4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveNPCBlown@ha
    stw     r0, R13Off_m0x617c(r13)
    addi    r0, r3, __vvt__14TNerveNPCBlown@l
    lis     r4, __dt__14TNerveNPCBlownFv@ha
    stw     r0, R13Off_m0x617c(r13)
    lis     r3, unk_803faef0@ha
    addi    r5, r3, unk_803faef0@l
    addi    r4, r4, __dt__14TNerveNPCBlownFv@l
    addi    r3, r13, R13Off_m0x617c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6180(r13)
branch_0x8020bbd4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x617c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__14TNerveNPCBlownFv
__dt__14TNerveNPCBlownFv: # 0x8020bbe8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020bc2c
    lis     r3, __vvt__14TNerveNPCBlown@ha
    addi    r0, r3, __vvt__14TNerveNPCBlown@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020bc1c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020bc1c:
    extsh.  r0, r4
    ble-    branch_0x8020bc2c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020bc2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveNPCMadCFP24TSpineBase_10TLiveActor_
execute__12TNerveNPCMadCFP24TSpineBase_10TLiveActor_: # 0x8020bc44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020bc6c
    mr      r3, r31
    bl      npcMadIn__8TBaseNPCFv
branch_0x8020bc6c:
    mr      r3, r31
    bl      npcMadding__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020bc84
    li      r3, 0x1
    b       branch_0x8020bc88

branch_0x8020bc84:
    li      r3, 0x0
branch_0x8020bc88:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__12TNerveNPCMadFv
theNerve__12TNerveNPCMadFv: # 0x8020bc9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6188(r13)
    extsb.  r0, r0
    bne-    branch_0x8020bcec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveNPCMad@ha
    stw     r0, R13Off_m0x6184(r13)
    addi    r0, r3, __vvt__12TNerveNPCMad@l
    lis     r4, __dt__12TNerveNPCMadFv@ha
    stw     r0, R13Off_m0x6184(r13)
    lis     r3, unk_803faee4@ha
    addi    r5, r3, unk_803faee4@l
    addi    r4, r4, __dt__12TNerveNPCMadFv@l
    addi    r3, r13, R13Off_m0x6184
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6188(r13)
branch_0x8020bcec:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6184
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TNerveNPCMadFv
__dt__12TNerveNPCMadFv: # 0x8020bd00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020bd44
    lis     r3, __vvt__12TNerveNPCMad@ha
    addi    r0, r3, __vvt__12TNerveNPCMad@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020bd34
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020bd34:
    extsh.  r0, r4
    ble-    branch_0x8020bd44
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020bd44:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveNPCThrowCFP24TSpineBase_10TLiveActor_
execute__14TNerveNPCThrowCFP24TSpineBase_10TLiveActor_: # 0x8020bd5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020bd84
    mr      r3, r31
    bl      npcThrowIn__8TBaseNPCFv
branch_0x8020bd84:
    mr      r3, r31
    bl      npcThrowing__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020bd9c
    li      r3, 0x1
    b       branch_0x8020bda0

branch_0x8020bd9c:
    li      r3, 0x0
branch_0x8020bda0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__14TNerveNPCThrowFv
theNerve__14TNerveNPCThrowFv: # 0x8020bdb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6190(r13)
    extsb.  r0, r0
    bne-    branch_0x8020be04
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveNPCThrow@ha
    stw     r0, R13Off_m0x618c(r13)
    addi    r0, r3, __vvt__14TNerveNPCThrow@l
    lis     r4, __dt__14TNerveNPCThrowFv@ha
    stw     r0, R13Off_m0x618c(r13)
    lis     r3, unk_803faed8@ha
    addi    r5, r3, unk_803faed8@l
    addi    r4, r4, __dt__14TNerveNPCThrowFv@l
    addi    r3, r13, R13Off_m0x618c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6190(r13)
branch_0x8020be04:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x618c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__14TNerveNPCThrowFv
__dt__14TNerveNPCThrowFv: # 0x8020be18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020be5c
    lis     r3, __vvt__14TNerveNPCThrow@ha
    addi    r0, r3, __vvt__14TNerveNPCThrow@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020be4c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020be4c:
    extsh.  r0, r4
    ble-    branch_0x8020be5c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020be5c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveNPCTalkCFP24TSpineBase_10TLiveActor_
execute__13TNerveNPCTalkCFP24TSpineBase_10TLiveActor_: # 0x8020be74
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    mr      r5, r3
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r6, R13Off_m0x6048(r13)
    lwz     r31, 0x0(r4)
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x8020beac
    cmplwi  r0, 0x2
    beq-    branch_0x8020beac
    li      r5, 0x0
branch_0x8020beac:
    clrlwi. r0, r5, 24
    bne-    branch_0x8020bec4
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x4
    beq-    branch_0x8020bec4
    li      r3, 0x0
branch_0x8020bec4:
    clrlwi. r0, r3, 24
    beq-    branch_0x8020beec
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020bee0
    mr      r3, r31
    bl      npcTalkIn__8TBaseNPCFv
branch_0x8020bee0:
    mr      r3, r31
    bl      npcTalking__8TBaseNPCFv
    b       branch_0x8020bf0c

branch_0x8020beec:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1c
    bne-    branch_0x8020bf04
    li      r3, 0x1
    b       branch_0x8020bf10

branch_0x8020bf04:
    mr      r3, r31
    bl      npcTalkOut__8TBaseNPCFv
branch_0x8020bf0c:
    li      r3, 0x0
branch_0x8020bf10:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl theNerve__13TNerveNPCTalkFv
theNerve__13TNerveNPCTalkFv: # 0x8020bf24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6198(r13)
    extsb.  r0, r0
    bne-    branch_0x8020bf74
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveNPCTalk@ha
    stw     r0, R13Off_m0x6194(r13)
    addi    r0, r3, __vvt__13TNerveNPCTalk@l
    lis     r4, __dt__13TNerveNPCTalkFv@ha
    stw     r0, R13Off_m0x6194(r13)
    lis     r3, unk_803faecc@ha
    addi    r5, r3, unk_803faecc@l
    addi    r4, r4, __dt__13TNerveNPCTalkFv@l
    addi    r3, r13, R13Off_m0x6194
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6198(r13)
branch_0x8020bf74:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6194
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TNerveNPCTalkFv
__dt__13TNerveNPCTalkFv: # 0x8020bf88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020bfcc
    lis     r3, __vvt__13TNerveNPCTalk@ha
    addi    r0, r3, __vvt__13TNerveNPCTalk@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020bfbc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020bfbc:
    extsh.  r0, r4
    ble-    branch_0x8020bfcc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020bfcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__30TNerveNPCSetPosAfterSinkBottomCFP24TSpineBase_10TLiveActor_
execute__30TNerveNPCSetPosAfterSinkBottomCFP24TSpineBase_10TLiveActor_: # 0x8020bfe4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r4)
    bl      setPosAndInitAfterSinkBottom__8TBaseNPCFv
    lwz     r0, 0xc(sp)
    li      r3, 0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl theNerve__30TNerveNPCSetPosAfterSinkBottomFv
theNerve__30TNerveNPCSetPosAfterSinkBottomFv: # 0x8020c00c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61a0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c05c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__30TNerveNPCSetPosAfterSinkBottom@ha
    stw     r0, R13Off_m0x619c(r13)
    addi    r0, r3, __vvt__30TNerveNPCSetPosAfterSinkBottom@l
    lis     r4, __dt__30TNerveNPCSetPosAfterSinkBottomFv@ha
    stw     r0, R13Off_m0x619c(r13)
    lis     r3, unk_803faec0@ha
    addi    r5, r3, unk_803faec0@l
    addi    r4, r4, __dt__30TNerveNPCSetPosAfterSinkBottomFv@l
    addi    r3, r13, R13Off_m0x619c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61a0(r13)
branch_0x8020c05c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x619c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__30TNerveNPCSetPosAfterSinkBottomFv
__dt__30TNerveNPCSetPosAfterSinkBottomFv: # 0x8020c070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020c0b4
    lis     r3, __vvt__30TNerveNPCSetPosAfterSinkBottom@ha
    addi    r0, r3, __vvt__30TNerveNPCSetPosAfterSinkBottom@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020c0a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020c0a4:
    extsh.  r0, r4
    ble-    branch_0x8020c0b4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020c0b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveNPCRecoverAfterCFP24TSpineBase_10TLiveActor_
execute__21TNerveNPCRecoverAfterCFP24TSpineBase_10TLiveActor_: # 0x8020c0cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020c0f4
    mr      r3, r31
    bl      npcRecoverAfterIn__8TBaseNPCFv
branch_0x8020c0f4:
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x8020c120
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      isCurAnmAlreadyEnd__6MActorFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c120
    li      r3, 0x1
    b       branch_0x8020c124

branch_0x8020c120:
    li      r3, 0x0
branch_0x8020c124:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl theNerve__21TNerveNPCRecoverAfterFv
theNerve__21TNerveNPCRecoverAfterFv: # 0x8020c138
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61a8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c188
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveNPCRecoverAfter@ha
    stw     r0, R13Off_m0x61a4(r13)
    addi    r0, r3, __vvt__21TNerveNPCRecoverAfter@l
    lis     r4, __dt__21TNerveNPCRecoverAfterFv@ha
    stw     r0, R13Off_m0x61a4(r13)
    lis     r3, unk_803faeb4@ha
    addi    r5, r3, unk_803faeb4@l
    addi    r4, r4, __dt__21TNerveNPCRecoverAfterFv@l
    addi    r3, r13, R13Off_m0x61a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61a8(r13)
branch_0x8020c188:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61a4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__21TNerveNPCRecoverAfterFv
__dt__21TNerveNPCRecoverAfterFv: # 0x8020c19c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020c1e0
    lis     r3, __vvt__21TNerveNPCRecoverAfter@ha
    addi    r0, r3, __vvt__21TNerveNPCRecoverAfter@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020c1d0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020c1d0:
    extsh.  r0, r4
    ble-    branch_0x8020c1e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020c1e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveNPCRecoverFromSinkCFP24TSpineBase_10TLiveActor_
execute__24TNerveNPCRecoverFromSinkCFP24TSpineBase_10TLiveActor_: # 0x8020c1f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    lwz     r3, 0x0(r4)
    bl      npcRecoverFromSinking__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c29c
    lbz     r0, R13Off_m0x61a8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c260
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveNPCRecoverAfter@ha
    stw     r0, R13Off_m0x61a4(r13)
    addi    r0, r3, __vvt__21TNerveNPCRecoverAfter@l
    lis     r4, __dt__21TNerveNPCRecoverAfterFv@ha
    stw     r0, R13Off_m0x61a4(r13)
    lis     r3, unk_803faeb4@ha
    addi    r5, r3, unk_803faeb4@l
    addi    r4, r4, __dt__21TNerveNPCRecoverAfterFv@l
    addi    r3, r13, R13Off_m0x61a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61a8(r13)
branch_0x8020c260:
    addi    r4, r13, R13Off_m0x61a4
    cmplwi  r4, 0x0
    beq-    branch_0x8020c294
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8020c294
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8020c294:
    li      r3, 0x1
    b       branch_0x8020c2a0

branch_0x8020c29c:
    li      r3, 0x0
branch_0x8020c2a0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl theNerve__24TNerveNPCRecoverFromSinkFv
theNerve__24TNerveNPCRecoverFromSinkFv: # 0x8020c2b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61b0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c304
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveNPCRecoverFromSink@ha
    stw     r0, R13Off_m0x61ac(r13)
    addi    r0, r3, __vvt__24TNerveNPCRecoverFromSink@l
    lis     r4, __dt__24TNerveNPCRecoverFromSinkFv@ha
    stw     r0, R13Off_m0x61ac(r13)
    lis     r3, unk_803faea8@ha
    addi    r5, r3, unk_803faea8@l
    addi    r4, r4, __dt__24TNerveNPCRecoverFromSinkFv@l
    addi    r3, r13, R13Off_m0x61ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61b0(r13)
branch_0x8020c304:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61ac
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__24TNerveNPCRecoverFromSinkFv
__dt__24TNerveNPCRecoverFromSinkFv: # 0x8020c318
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020c35c
    lis     r3, __vvt__24TNerveNPCRecoverFromSink@ha
    addi    r0, r3, __vvt__24TNerveNPCRecoverFromSink@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020c34c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020c34c:
    extsh.  r0, r4
    ble-    branch_0x8020c35c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020c35c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveNPCSinkCFP24TSpineBase_10TLiveActor_
execute__13TNerveNPCSinkCFP24TSpineBase_10TLiveActor_: # 0x8020c374
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r4)
    bl      npcSinking__8TBaseNPCFv
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl theNerve__13TNerveNPCSinkFv
theNerve__13TNerveNPCSinkFv: # 0x8020c39c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61b8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c3ec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__13TNerveNPCSink@ha
    stw     r0, R13Off_m0x61b4(r13)
    addi    r0, r3, __vvt__13TNerveNPCSink@l
    lis     r4, __dt__13TNerveNPCSinkFv@ha
    stw     r0, R13Off_m0x61b4(r13)
    lis     r3, unk_803fae9c@ha
    addi    r5, r3, unk_803fae9c@l
    addi    r4, r4, __dt__13TNerveNPCSinkFv@l
    addi    r3, r13, R13Off_m0x61b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61b8(r13)
branch_0x8020c3ec:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61b4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TNerveNPCSinkFv
__dt__13TNerveNPCSinkFv: # 0x8020c400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020c444
    lis     r3, __vvt__13TNerveNPCSink@ha
    addi    r0, r3, __vvt__13TNerveNPCSink@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020c434
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020c434:
    extsh.  r0, r4
    ble-    branch_0x8020c444
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020c444:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveNPCWetCFP24TSpineBase_10TLiveActor_
execute__12TNerveNPCWetCFP24TSpineBase_10TLiveActor_: # 0x8020c45c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020c484
    mr      r3, r31
    bl      npcWetIn__8TBaseNPCFv
branch_0x8020c484:
    mr      r3, r31
    bl      npcWetting__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c49c
    li      r3, 0x1
    b       branch_0x8020c4a0

branch_0x8020c49c:
    li      r3, 0x0
branch_0x8020c4a0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__12TNerveNPCWetFv
theNerve__12TNerveNPCWetFv: # 0x8020c4b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61c0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c504
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__12TNerveNPCWet@ha
    stw     r0, R13Off_m0x61bc(r13)
    addi    r0, r3, __vvt__12TNerveNPCWet@l
    lis     r4, __dt__12TNerveNPCWetFv@ha
    stw     r0, R13Off_m0x61bc(r13)
    lis     r3, unk_803fae90@ha
    addi    r5, r3, unk_803fae90@l
    addi    r4, r4, __dt__12TNerveNPCWetFv@l
    addi    r3, r13, R13Off_m0x61bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61c0(r13)
branch_0x8020c504:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61bc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TNerveNPCWetFv
__dt__12TNerveNPCWetFv: # 0x8020c518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020c55c
    lis     r3, __vvt__12TNerveNPCWet@ha
    addi    r0, r3, __vvt__12TNerveNPCWet@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020c54c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020c54c:
    extsh.  r0, r4
    ble-    branch_0x8020c55c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020c55c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveNPCTurnToMarioCFP24TSpineBase_10TLiveActor_
execute__20TNerveNPCTurnToMarioCFP24TSpineBase_10TLiveActor_: # 0x8020c574
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    mr      r30, r4
    stw     r29, 0xa4(sp)
    stw     r28, 0xa0(sp)
    lwz     r31, 0x0(r4)
    mr      r3, r31
    bl      isInBodyTurnSearchRange__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c5b8
    lfs     f1, -0x1cc8(r2)
    lfs     f0, 0x178(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x8020c638
branch_0x8020c5b8:
    lbz     r0, R13Off_m0x61d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c5fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__26TNerveNPCWaitMarioApproach@ha
    stw     r0, R13Off_m0x61cc(r13)
    addi    r0, r3, __vvt__26TNerveNPCWaitMarioApproach@l
    lis     r4, __dt__26TNerveNPCWaitMarioApproachFv@ha
    stw     r0, R13Off_m0x61cc(r13)
    lis     r3, unk_803fae78@ha
    addi    r5, r3, unk_803fae78@l
    addi    r4, r4, __dt__26TNerveNPCWaitMarioApproachFv@l
    addi    r3, r13, R13Off_m0x61cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61d0(r13)
branch_0x8020c5fc:
    addi    r4, r13, R13Off_m0x61cc
    cmplwi  r4, 0x0
    beq-    branch_0x8020c630
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8020c630
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8020c630:
    li      r3, 0x1
    b       branch_0x8020c8bc

branch_0x8020c638:
    lwz     r28, 0x4c(r31)
    addis   r3, r28, 0xfc00
    addi    r0, r3, -0x1c
    cmplwi  r0, 0x1
    ble-    branch_0x8020c8b8
    cmplwi  r3, 0x18
    li      r3, 0x0
    bne-    branch_0x8020c668
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8020c668
    li      r3, 0x1
branch_0x8020c668:
    clrlwi. r0, r3, 24
    bne-    branch_0x8020c8b8
    li      r29, 0x0
    addi    r3, r31, 0x0
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c694
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8020c694
    li      r29, 0x1
branch_0x8020c694:
    clrlwi. r0, r29, 24
    beq-    branch_0x8020c6a8
    mr      r3, r31
    bl      sunflowerReviving__8TBaseNPCFv
    b       branch_0x8020c8b8

branch_0x8020c6a8:
    addis   r0, r28, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x8020c6c8
    mr      r3, r31
    bl      monteMESetAnmWhenNear__8TBaseNPCFv
    mr      r3, r31
    bl      execTurnToFirstState__8TBaseNPCFv
    b       branch_0x8020c8b8

branch_0x8020c6c8:
    mr      r3, r31
    bl      isTurnToMarioWhenApproach__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c86c
    lfs     f1, 0x144(r31)
    addi    r3, r31, 0x10
    lwz     r4, R13Off_m0x60b4(r13)
    addi    r5, r31, 0x34
    bl      SMS_GoRotate__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f0, -0x1cc8(r2)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x64(sp)
    lfs     f2, 0x5c(sp)
    lfs     f1, 0x10(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0x5c(sp)
    lfs     f2, 0x60(sp)
    lfs     f1, 0x14(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0x60(sp)
    lfs     f2, 0x64(sp)
    lfs     f1, 0x18(r31)
    fsubs   f1, f2, f1
    stfs    f1, 0x64(sp)
    lwz     r0, 0x5c(sp)
    lwz     r3, 0x60(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x78(sp)
    lwz     r3, 0x7c(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x80(sp)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lfs     f1, 0x90(sp)
    lfs     f2, 0x88(sp)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8020c798
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8020c790
    lfs     f2, -0x1cc4(r2)
    b       branch_0x8020c80c

branch_0x8020c790:
    lfs     f2, -0x1cc0(r2)
    b       branch_0x8020c80c

branch_0x8020c798:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8020c7d4
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x1ca8(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1cbc(r2)
    stw     r0, 0x9c(sp)
    lis     r0, 0x4330
    stw     r0, 0x98(sp)
    lfd     f1, 0x98(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x8020c80c

branch_0x8020c7d4:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x1ca8(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x1cbc(r2)
    stw     r0, 0x9c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1cb8(r2)
    stw     r0, 0x98(sp)
    lfd     f2, 0x98(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x8020c80c:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x1cb4(r2)
    fsubs   f1, f1, f2
    fabs    f2, f1
    b       branch_0x8020c824

branch_0x8020c820:
    fsubs   f2, f2, f0
branch_0x8020c824:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x8020c820
    lfs     f1, -0x1cb4(r2)
    lfs     f0, -0x1cc8(r2)
    b       branch_0x8020c840

branch_0x8020c83c:
    fadds   f2, f2, f1
branch_0x8020c840:
    fcmpo   cr0, f2, f0
    blt+    branch_0x8020c83c
    lfs     f0, -0x1cb0(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8020c860
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    b       branch_0x8020c8b8

branch_0x8020c860:
    mr      r3, r31
    bl      npcStepIn__8TBaseNPCFv
    b       branch_0x8020c8b8

branch_0x8020c86c:
    mr      r3, r31
    bl      isNeedTurnToFirstState__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c8a4
    mr      r3, r31
    bl      execTurnToFirstState__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020c898
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    b       branch_0x8020c8b8

branch_0x8020c898:
    mr      r3, r31
    bl      npcStepIn__8TBaseNPCFv
    b       branch_0x8020c8b8

branch_0x8020c8a4:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8020c8b8
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
branch_0x8020c8b8:
    li      r3, 0x0
branch_0x8020c8bc:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__26TNerveNPCWaitMarioApproachFv
__dt__26TNerveNPCWaitMarioApproachFv: # 0x8020c8dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020c920
    lis     r3, __vvt__26TNerveNPCWaitMarioApproach@ha
    addi    r0, r3, __vvt__26TNerveNPCWaitMarioApproach@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020c910
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020c910:
    extsh.  r0, r4
    ble-    branch_0x8020c920
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020c920:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__20TNerveNPCTurnToMarioFv
theNerve__20TNerveNPCTurnToMarioFv: # 0x8020c938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020c988
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveNPCTurnToMario@ha
    stw     r0, R13Off_m0x61c4(r13)
    addi    r0, r3, __vvt__20TNerveNPCTurnToMario@l
    lis     r4, __dt__20TNerveNPCTurnToMarioFv@ha
    stw     r0, R13Off_m0x61c4(r13)
    lis     r3, unk_803fae84@ha
    addi    r5, r3, unk_803fae84@l
    addi    r4, r4, __dt__20TNerveNPCTurnToMarioFv@l
    addi    r3, r13, R13Off_m0x61c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61c8(r13)
branch_0x8020c988:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61c4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__20TNerveNPCTurnToMarioFv
__dt__20TNerveNPCTurnToMarioFv: # 0x8020c99c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020c9e0
    lis     r3, __vvt__20TNerveNPCTurnToMario@ha
    addi    r0, r3, __vvt__20TNerveNPCTurnToMario@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020c9d0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020c9d0:
    extsh.  r0, r4
    ble-    branch_0x8020c9e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020c9e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveNPCWaitMarioApproachCFP24TSpineBase_10TLiveActor_
execute__26TNerveNPCWaitMarioApproachCFP24TSpineBase_10TLiveActor_: # 0x8020c9f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    stw     r29, 0x34(sp)
    stw     r28, 0x30(sp)
    lwz     r31, 0x0(r4)
    mr      r3, r31
    bl      isInBodyTurnSearchRange__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020cabc
    lfs     f1, -0x1cc8(r2)
    lfs     f0, 0x178(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8020cabc
    lbz     r0, R13Off_m0x61c8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020ca80
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveNPCTurnToMario@ha
    stw     r0, R13Off_m0x61c4(r13)
    addi    r0, r3, __vvt__20TNerveNPCTurnToMario@l
    lis     r4, __dt__20TNerveNPCTurnToMarioFv@ha
    stw     r0, R13Off_m0x61c4(r13)
    lis     r3, unk_803fae84@ha
    addi    r5, r3, unk_803fae84@l
    addi    r4, r4, __dt__20TNerveNPCTurnToMarioFv@l
    addi    r3, r13, R13Off_m0x61c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61c8(r13)
branch_0x8020ca80:
    addi    r4, r13, R13Off_m0x61c4
    cmplwi  r4, 0x0
    beq-    branch_0x8020cab4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8020cab4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8020cab4:
    li      r3, 0x1
    b       branch_0x8020cb9c

branch_0x8020cabc:
    lwz     r28, 0x4c(r31)
    addis   r3, r28, 0xfc00
    addi    r0, r3, -0x1c
    cmplwi  r0, 0x1
    ble-    branch_0x8020cb98
    cmplwi  r3, 0x18
    li      r3, 0x0
    bne-    branch_0x8020caec
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8020caec
    li      r3, 0x1
branch_0x8020caec:
    clrlwi. r0, r3, 24
    bne-    branch_0x8020cb98
    li      r29, 0x0
    addi    r3, r31, 0x0
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020cb18
    lbz     r0, 0x1d8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8020cb18
    li      r29, 0x1
branch_0x8020cb18:
    clrlwi. r0, r29, 24
    beq-    branch_0x8020cb2c
    mr      r3, r31
    bl      sunflowerReviving__8TBaseNPCFv
    b       branch_0x8020cb98

branch_0x8020cb2c:
    addis   r0, r28, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x8020cb4c
    mr      r3, r31
    bl      monteMESetAnmWhenFar__8TBaseNPCFv
    mr      r3, r31
    bl      execTurnToFirstState__8TBaseNPCFv
    b       branch_0x8020cb98

branch_0x8020cb4c:
    mr      r3, r31
    bl      isNeedTurnToFirstState__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020cb84
    mr      r3, r31
    bl      execTurnToFirstState__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020cb78
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    b       branch_0x8020cb98

branch_0x8020cb78:
    mr      r3, r31
    bl      npcStepIn__8TBaseNPCFv
    b       branch_0x8020cb98

branch_0x8020cb84:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8020cb98
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
branch_0x8020cb98:
    li      r3, 0x0
branch_0x8020cb9c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl theNerve__26TNerveNPCWaitMarioApproachFv
theNerve__26TNerveNPCWaitMarioApproachFv: # 0x8020cbbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61d0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020cc0c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__26TNerveNPCWaitMarioApproach@ha
    stw     r0, R13Off_m0x61cc(r13)
    addi    r0, r3, __vvt__26TNerveNPCWaitMarioApproach@l
    lis     r4, __dt__26TNerveNPCWaitMarioApproachFv@ha
    stw     r0, R13Off_m0x61cc(r13)
    lis     r3, unk_803fae78@ha
    addi    r5, r3, unk_803fae78@l
    addi    r4, r4, __dt__26TNerveNPCWaitMarioApproachFv@l
    addi    r3, r13, R13Off_m0x61cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61d0(r13)
branch_0x8020cc0c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61cc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__21TNerveNPCWaitContinueCFP24TSpineBase_10TLiveActor_
execute__21TNerveNPCWaitContinueCFP24TSpineBase_10TLiveActor_: # 0x8020cc20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020cc54
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8020cc50
    bl      npcTakenIn__8TBaseNPCFv
    b       branch_0x8020cc54

branch_0x8020cc50:
    bl      npcWaitIn__8TBaseNPCFv
branch_0x8020cc54:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl theNerve__21TNerveNPCWaitContinueFv
theNerve__21TNerveNPCWaitContinueFv: # 0x8020cc68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61d8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020ccb8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveNPCWaitContinue@ha
    stw     r0, R13Off_m0x61d4(r13)
    addi    r0, r3, __vvt__21TNerveNPCWaitContinue@l
    lis     r4, __dt__21TNerveNPCWaitContinueFv@ha
    stw     r0, R13Off_m0x61d4(r13)
    lis     r3, unk_803fae6c@ha
    addi    r5, r3, unk_803fae6c@l
    addi    r4, r4, __dt__21TNerveNPCWaitContinueFv@l
    addi    r3, r13, R13Off_m0x61d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61d8(r13)
branch_0x8020ccb8:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61d4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__21TNerveNPCWaitContinueFv
__dt__21TNerveNPCWaitContinueFv: # 0x8020cccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020cd10
    lis     r3, __vvt__21TNerveNPCWaitContinue@ha
    addi    r0, r3, __vvt__21TNerveNPCWaitContinue@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020cd00
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020cd00:
    extsh.  r0, r4
    ble-    branch_0x8020cd10
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020cd10:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveNPCGraphWaitCFP24TSpineBase_10TLiveActor_
execute__18TNerveNPCGraphWaitCFP24TSpineBase_10TLiveActor_: # 0x8020cd28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r27, 0x54(sp)
    mr      r31, r4
    lwz     r0, 0x20(r4)
    lwz     r27, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020cdc0
    lwz     r4, R13Off_m0x6220(r13)
    li      r0, 0x0
    lwz     r30, 0x22c(r27)
    lha     r29, 0x234(r4)
    lha     r28, 0x248(r4)
    stw     r0, 0x0(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1ca8(r2)
    stw     r0, 0x4c(sp)
    subf    r0, r29, r28
    lis     r3, 0x4330
    lfs     f1, -0x1ca0(r2)
    stw     r3, 0x48(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    lfd     f0, 0x48(sp)
    stw     r3, 0x40(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x40(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r3, r29, r0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r30)
branch_0x8020cdc0:
    lfs     f1, 0x140(r27)
    lfs     f0, -0x1cb0(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8020ce84
    lwz     r5, 0x22c(r27)
    li      r4, 0x0
    lwz     r3, 0x0(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    lwz     r3, 0x4(r5)
    cmpw    r0, r3
    blt-    branch_0x8020cdfc
    stw     r3, 0x0(r5)
    li      r4, 0x1
branch_0x8020cdfc:
    clrlwi. r0, r4, 24
    beq-    branch_0x8020ce90
    lbz     r0, R13Off_m0x61f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020ce48
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveNPCGraphWander@ha
    stw     r0, R13Off_m0x61ec(r13)
    addi    r0, r3, __vvt__20TNerveNPCGraphWander@l
    lis     r4, __dt__20TNerveNPCGraphWanderFv@ha
    stw     r0, R13Off_m0x61ec(r13)
    lis     r3, unk_803fae48@ha
    addi    r5, r3, unk_803fae48@l
    addi    r4, r4, __dt__20TNerveNPCGraphWanderFv@l
    addi    r3, r13, R13Off_m0x61ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61f0(r13)
branch_0x8020ce48:
    addi    r4, r13, R13Off_m0x61ec
    cmplwi  r4, 0x0
    beq-    branch_0x8020ce7c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8020ce7c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8020ce7c:
    li      r3, 0x1
    b       branch_0x8020ce94

branch_0x8020ce84:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      execWalk__8TBaseNPCFb
branch_0x8020ce90:
    li      r3, 0x0
branch_0x8020ce94:
    lmw     r27, 0x54(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __dt__20TNerveNPCGraphWanderFv
__dt__20TNerveNPCGraphWanderFv: # 0x8020cea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020ceec
    lis     r3, __vvt__20TNerveNPCGraphWander@ha
    addi    r0, r3, __vvt__20TNerveNPCGraphWander@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020cedc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020cedc:
    extsh.  r0, r4
    ble-    branch_0x8020ceec
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020ceec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__18TNerveNPCGraphWaitFv
theNerve__18TNerveNPCGraphWaitFv: # 0x8020cf04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61e0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020cf54
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveNPCGraphWait@ha
    stw     r0, R13Off_m0x61dc(r13)
    addi    r0, r3, __vvt__18TNerveNPCGraphWait@l
    lis     r4, __dt__18TNerveNPCGraphWaitFv@ha
    stw     r0, R13Off_m0x61dc(r13)
    lis     r3, unk_803fae60@ha
    addi    r5, r3, unk_803fae60@l
    addi    r4, r4, __dt__18TNerveNPCGraphWaitFv@l
    addi    r3, r13, R13Off_m0x61dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61e0(r13)
branch_0x8020cf54:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61dc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveNPCGraphWaitFv
__dt__18TNerveNPCGraphWaitFv: # 0x8020cf68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020cfac
    lis     r3, __vvt__18TNerveNPCGraphWait@ha
    addi    r0, r3, __vvt__18TNerveNPCGraphWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020cf9c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020cf9c:
    extsh.  r0, r4
    ble-    branch_0x8020cfac
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020cfac:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveNPCUTurnCFP24TSpineBase_10TLiveActor_
execute__14TNerveNPCUTurnCFP24TSpineBase_10TLiveActor_: # 0x8020cfc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r30, 0x0(r4)
    mr      r3, r30
    bl      execUTurn__8TBaseNPCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020d084
    lfs     f0, -0x1cc8(r2)
    stfs    f0, 0x140(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 11, 9
    stw     r0, 0xf0(r30)
    lbz     r0, R13Off_m0x61f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020d048
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveNPCGraphWander@ha
    stw     r0, R13Off_m0x61ec(r13)
    addi    r0, r3, __vvt__20TNerveNPCGraphWander@l
    lis     r4, __dt__20TNerveNPCGraphWanderFv@ha
    stw     r0, R13Off_m0x61ec(r13)
    lis     r3, unk_803fae48@ha
    addi    r5, r3, unk_803fae48@l
    addi    r4, r4, __dt__20TNerveNPCGraphWanderFv@l
    addi    r3, r13, R13Off_m0x61ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61f0(r13)
branch_0x8020d048:
    addi    r4, r13, R13Off_m0x61ec
    cmplwi  r4, 0x0
    beq-    branch_0x8020d07c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8020d07c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8020d07c:
    li      r3, 0x1
    b       branch_0x8020d088

branch_0x8020d084:
    li      r3, 0x0
branch_0x8020d088:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl theNerve__14TNerveNPCUTurnFv
theNerve__14TNerveNPCUTurnFv: # 0x8020d0a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020d0f0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveNPCUTurn@ha
    stw     r0, R13Off_m0x61e4(r13)
    addi    r0, r3, __vvt__14TNerveNPCUTurn@l
    lis     r4, __dt__14TNerveNPCUTurnFv@ha
    stw     r0, R13Off_m0x61e4(r13)
    lis     r3, unk_803fae54@ha
    addi    r5, r3, unk_803fae54@l
    addi    r4, r4, __dt__14TNerveNPCUTurnFv@l
    addi    r3, r13, R13Off_m0x61e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61e8(r13)
branch_0x8020d0f0:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61e4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__14TNerveNPCUTurnFv
__dt__14TNerveNPCUTurnFv: # 0x8020d104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8020d148
    lis     r3, __vvt__14TNerveNPCUTurn@ha
    addi    r0, r3, __vvt__14TNerveNPCUTurn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8020d138
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8020d138:
    extsh.  r0, r4
    ble-    branch_0x8020d148
    mr      r3, r31
    bl      __dl__FPv
branch_0x8020d148:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveNPCGraphWanderCFP24TSpineBase_10TLiveActor_
execute__20TNerveNPCGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x8020d160
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stfd    f31, 0x120(sp)
    stmw    r27, 0x10c(sp)
    mr      r28, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8020d1fc
    lwz     r4, R13Off_m0x6220(r13)
    li      r0, 0x0
    lwz     r27, 0x22c(r31)
    lha     r29, 0x20c(r4)
    lha     r30, 0x220(r4)
    stw     r0, 0x0(r27)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x1ca8(r2)
    stw     r0, 0x104(sp)
    subf    r0, r29, r30
    lis     r3, 0x4330
    lfs     f1, -0x1ca0(r2)
    stw     r3, 0x100(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xfc(sp)
    lfd     f0, 0x100(sp)
    stw     r3, 0xf8(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xf8(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    add     r3, r29, r0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r27)
branch_0x8020d1fc:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      execWalk__8TBaseNPCFb
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8020d21c
    addi    r4, r3, 0x10
    b       branch_0x8020d220

branch_0x8020d21c:
    addi    r4, r31, 0xf8
branch_0x8020d220:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x1cc8(r2)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xd8(sp)
    lfs     f2, 0xd0(sp)
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    fsubs   f1, f2, f1
    lfs     f2, 0xd8(sp)
    fsubs   f2, f2, f3
    stfs    f1, 0xdc(sp)
    stfs    f0, 0xe0(sp)
    stfs    f2, 0xe4(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0xe0(sp)
    lfs     f2, 0xe4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lwz     r0, 0x118(r31)
    fmuls   f2, f2, f2
    cmpwi   r0, 0x0
    fadds   f0, f1, f0
    fadds   f31, f2, f0
    beq-    branch_0x8020d2d8
    lfs     f1, -0x1c9c(r2)
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    bge-    branch_0x8020d4f8
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8020d4f8
    addi    r3, sp, 0xc0
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0xc0(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0xc4(sp)
    lwz     r0, 0xc8(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0xcc(sp)
    stw     r0, 0x100(r31)
    b       branch_0x8020d4f8

branch_0x8020d2d8:
    lwz     r3, 0x124(r31)
    li      r30, 0x0
    li      r29, 0x0
    bl      getCurGraphIndex__12TGraphTracerCFv
    mr      r27, r3
    lwz     r3, 0x124(r31)
    bl      getGraph__12TGraphTracerCFv
    lwz     r3, 0x0(r3)
    slwi    r0, r27, 4
    lwzx    r3, r3, r0
    lha     r0, 0x6(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8020d314
    li      r0, 0x1
    b       branch_0x8020d318

branch_0x8020d314:
    li      r0, 0x0
branch_0x8020d318:
    clrlwi. r0, r0, 24
    beq-    branch_0x8020d360
    lwz     r4, 0x124(r31)
    li      r30, 0x1
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lhz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8020d350
    li      r0, 0x1
    b       branch_0x8020d354

branch_0x8020d350:
    li      r0, 0x0
branch_0x8020d354:
    clrlwi. r0, r0, 24
    beq-    branch_0x8020d360
    li      r29, 0x1
branch_0x8020d360:
    lwz     r4, 0x22c(r31)
    li      r27, 0x0
    lwz     r3, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r4)
    lwz     r0, 0x0(r4)
    lwz     r3, 0x4(r4)
    cmpw    r0, r3
    blt-    branch_0x8020d38c
    stw     r3, 0x0(r4)
    li      r27, 0x1
branch_0x8020d38c:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8020d3a8
    lfs     f1, -0x1c98(r2)
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    blt-    branch_0x8020d3c0
branch_0x8020d3a8:
    clrlwi. r0, r30, 24
    bne-    branch_0x8020d4f8
    lfs     f1, -0x1c9c(r2)
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    bge-    branch_0x8020d4f8
branch_0x8020d3c0:
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8020d454
    clrlwi. r0, r27, 24
    beq-    branch_0x8020d454
    lbz     r0, R13Off_m0x61e0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020d418
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveNPCGraphWait@ha
    stw     r0, R13Off_m0x61dc(r13)
    addi    r0, r3, __vvt__18TNerveNPCGraphWait@l
    lis     r4, __dt__18TNerveNPCGraphWaitFv@ha
    stw     r0, R13Off_m0x61dc(r13)
    lis     r3, unk_803fae60@ha
    addi    r5, r3, unk_803fae60@l
    addi    r4, r4, __dt__18TNerveNPCGraphWaitFv@l
    addi    r3, r13, R13Off_m0x61dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61e0(r13)
branch_0x8020d418:
    addi    r4, r13, R13Off_m0x61dc
    cmplwi  r4, 0x0
    beq-    branch_0x8020d44c
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x8020d44c
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x8020d44c:
    li      r3, 0x1
    b       branch_0x8020d4fc

branch_0x8020d454:
    mr      r3, r31
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    clrlwi. r0, r30, 24
    beq-    branch_0x8020d4f8
    lbz     r0, R13Off_m0x61e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8020d4a8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveNPCUTurn@ha
    stw     r0, R13Off_m0x61e4(r13)
    addi    r0, r3, __vvt__14TNerveNPCUTurn@l
    lis     r4, __dt__14TNerveNPCUTurnFv@ha
    stw     r0, R13Off_m0x61e4(r13)
    lis     r3, unk_803fae54@ha
    addi    r5, r3, unk_803fae54@l
    addi    r4, r4, __dt__14TNerveNPCUTurnFv@l
    addi    r3, r13, R13Off_m0x61e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61e8(r13)
branch_0x8020d4a8:
    addi    r4, r13, R13Off_m0x61e4
    cmplwi  r4, 0x0
    beq-    branch_0x8020d4dc
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x8020d4dc
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x8020d4dc:
    clrlwi. r0, r29, 24
    beq-    branch_0x8020d4f0
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x20
    stw     r0, 0xf0(r31)
branch_0x8020d4f0:
    li      r3, 0x1
    b       branch_0x8020d4fc

branch_0x8020d4f8:
    li      r3, 0x0
branch_0x8020d4fc:
    lmw     r27, 0x10c(sp)
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl getCurGraphIndex__12TGraphTracerCFv
getCurGraphIndex__12TGraphTracerCFv: # 0x8020d514
    lwz     r3, 0x4(r3)
    blr


.globl theNerve__20TNerveNPCGraphWanderFv
theNerve__20TNerveNPCGraphWanderFv: # 0x8020d51c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x61f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8020d56c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveNPCGraphWander@ha
    stw     r0, R13Off_m0x61ec(r13)
    addi    r0, r3, __vvt__20TNerveNPCGraphWander@l
    lis     r4, __dt__20TNerveNPCGraphWanderFv@ha
    stw     r0, R13Off_m0x61ec(r13)
    lis     r3, unk_803fae48@ha
    addi    r5, r3, unk_803fae48@l
    addi    r4, r4, __dt__20TNerveNPCGraphWanderFv@l
    addi    r3, r13, R13Off_m0x61ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x61f0(r13)
branch_0x8020d56c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x61ec
    addi    sp, sp, 0x8
    mtlr    r0
    blr

