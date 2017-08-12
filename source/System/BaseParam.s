
.globl __ct__10TBaseParamFP7TParamsUsPCc
__ct__10TBaseParamFP7TParamsUsPCc: # 0x80287644
    lis     r7, __vvt__10TBaseParam@ha
    addi    r0, r7, __vvt__10TBaseParam@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    sth     r5, 0x4(r3)
    stw     r6, 0x8(r3)
    stw     r0, 0xc(r3)
    lwz     r0, 0x4(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8028768c
    mr      r4, r0
    b       branch_0x80287678

branch_0x80287674:
    mr      r4, r0
branch_0x80287678:
    lwz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    bne+    branch_0x80287674
    stw     r3, 0xc(r4)
    blr

branch_0x8028768c:
    stw     r3, 0x4(r4)
    blr


.globl load__10TBaseParamFR20JSUMemoryInputStream
load__10TBaseParamFR20JSUMemoryInputStream: # 0x80287694
    blr

