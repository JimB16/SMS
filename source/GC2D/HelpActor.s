
.globl __dt__16TSwitchHelpActorFv
__dt__16TSwitchHelpActorFv: # 0x801575bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8015763c
    lis     r3, 0x803c
    addi    r3, r3, 0x578
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8015762c
    lis     r3, 0x803c
    addi    r3, r3, 0x620
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8015762c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8015762c:
    extsh.  r0, r31
    ble-    branch_0x8015763c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8015763c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl check__16TSwitchHelpActorFv
check__16TSwitchHelpActorFv: # 0x80157658
    lwz     r3, 0x70(r3)
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x80157670
    li      r0, 0x1
    b       branch_0x80157674

branch_0x80157670:
    li      r0, 0x0
branch_0x80157674:
    clrlwi. r0, r0, 24
    beq-    branch_0x80157684
    li      r3, 0x1
    blr

branch_0x80157684:
    li      r3, 0x0
    blr


.globl __ct__16TSwitchHelpActorFPCc
__ct__16TSwitchHelpActorFPCc: # 0x8015768c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    addi    r3, r3, 0x620
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r31)
    li      r0, -0x1
    addi    r4, r3, 0x578
    stw     r0, 0x68(r31)
    li      r5, 0x0
    addi    r0, r4, 0x24
    stw     r5, 0x6c(r31)
    mr      r3, r31
    stw     r5, 0x70(r31)
    stb     r5, 0x74(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__10THelpActorFv
__dt__10THelpActorFv: # 0x801576fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80157764
    lis     r3, 0x803c
    addi    r3, r3, 0x620
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80157754
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80157754:
    extsh.  r0, r31
    ble-    branch_0x80157764
    mr      r3, r30
    bl      __dl__FPv
branch_0x80157764:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl check__10THelpActorFv
check__10THelpActorFv: # 0x80157780
    lwz     r3, 0x70(r3)
    lwz     r0, 0xf0(r3)
    clrlwi  r0, r0, 31
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    blr


.globl perform__10THelpActorFUlPQ26JDrama9TGraphics
perform__10THelpActorFUlPQ26JDrama9TGraphics: # 0x801577a0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x801578e4
    lbz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80157858
    lwz     r0, 0x70(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801577f8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x801577f8
    li      r0, -0x1
    b       branch_0x80157828

branch_0x801577f8:
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80157824
    lwz     r3, 0x44(r31)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80157824
    lwz     r0, 0x68(r31)
    b       branch_0x80157828

branch_0x80157824:
    li      r0, -0x1
branch_0x80157828:
    cmpwi   r0, -0x1
    bne-    branch_0x801578e4
    lwz     r3, gpMarDirector(r13)
    li      r5, 0x0
    lwz     r4, 0x68(r31)
    lwz     r3, 0x74(r3)
    bl      startDisappearBalloon__11TGCConsole2FUlb
    clrlwi. r0, r3, 24
    beq-    branch_0x801578e4
    li      r0, 0x0
    stb     r0, 0x74(r31)
    b       branch_0x801578e4

branch_0x80157858:
    lwz     r0, 0x70(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80157888
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80157888
    li      r0, -0x1
    b       branch_0x801578b8

branch_0x80157888:
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801578b4
    lwz     r3, 0x44(r31)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801578b4
    lwz     r0, 0x68(r31)
    b       branch_0x801578b8

branch_0x801578b4:
    li      r0, -0x1
branch_0x801578b8:
    cmpwi   r0, -0x1
    beq-    branch_0x801578e4
    lwz     r3, gpMarDirector(r13)
    li      r5, 0x0
    lwz     r4, 0x68(r31)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    clrlwi. r0, r3, 24
    beq-    branch_0x801578e4
    li      r0, 0x1
    stb     r0, 0x74(r31)
branch_0x801578e4:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl loadAfter__10THelpActorFv
loadAfter__10THelpActorFv: # 0x801578f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r3, -0x5db8(r13)
    lwz     r31, 0x6c(r29)
    lwz     r30, 0x4(r3)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r31
    mtlr    r12
    blrl
    stw     r3, 0x70(r29)
    lis     r3, 0x8038
    addi    r31, r3, 0x7f78
    lwz     r4, -0x5db8(r13)
    mr      r3, r31
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    mr      r4, r29
    bl      entryHelpActor__11TGCConsole2FP10THelpActor
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl load__10THelpActorFR20JSUMemoryInputStream
load__10THelpActorFR20JSUMemoryInputStream: # 0x801579a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x6c(r30)
    lis     r4, 0x4000
    addi    r3, r30, 0x0
    lfs     f3, -0x4a54(rtoc)
    addi    r4, r4, 0x320
    lfs     f2, -0x4a58(rtoc)
    li      r5, 0x1
    lfs     f1, 0x24(r30)
    lfs     f0, 0x28(r30)
    fmr     f4, f3
    fmuls   f1, f2, f1
    lis     r6, 0x8000
    fmuls   f2, f2, f0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x10(sp)
    addi    r0, r3, 0x33
    stw     r0, 0x68(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__10THelpActorFPCc
__ct__10THelpActorFPCc: # 0x80157a48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    addi    r3, r3, 0x620
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, -0x1
    stw     r0, 0x20(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0x68(r31)
    stw     r0, 0x6c(r31)
    stw     r0, 0x70(r31)
    stb     r0, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl _32___dt__10THelpActorFv
_32___dt__10THelpActorFv: # 0x80157aa4
    subi    r3, r3, 0x20
    b       __dt__10THelpActorFv


.globl _32___dt__16TSwitchHelpActorFv
_32___dt__16TSwitchHelpActorFv: # 0x80157aac
    subi    r3, r3, 0x20
    b       __dt__16TSwitchHelpActorFv

