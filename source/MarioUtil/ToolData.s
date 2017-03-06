
.globl GetValue__Q24Koga8ToolDataCFiPCcRPCc
GetValue__Q24Koga8ToolDataCFiPCcRPCc: # 0x80236e3c
    lwz     r7, 0x4(r3)
    lis     r3, 0x200
    subi    r3, r3, 0x27
    lwz     r11, 0x4(r7)
    li      r10, 0x0
    li      r8, 0x1381
    b       branch_0x80236e84

branch_0x80236e58:
    extsb   r9, r9
    slwi    r0, r10, 8
    add     r10, r9, r0
    mulhwu  r9, r8, r10
    subf    r0, r9, r10
    srwi    r0, r0, 1
    add     r0, r0, r9
    srwi    r0, r0, 24
    mullw   r0, r0, r3
    subf    r10, r0, r10
    addi    r5, r5, 0x1
branch_0x80236e84:
    lbz     r9, 0x0(r5)
    extsb.  r0, r9
    bne+    branch_0x80236e58
    cmpwi   r11, 0x0
    mtctr   r11
    li      r5, 0x0
    addi    r3, r5, 0x0
    ble-    branch_0x80236ec4
branch_0x80236ea4:
    addi    r0, r3, 0x10
    lwzx    r0, r7, r0
    cmplw   r10, r0
    bne-    branch_0x80236eb8
    b       branch_0x80236ec8

branch_0x80236eb8:
    addi    r5, r5, 0x1
    addi    r3, r3, 0xc
    bdnz+      branch_0x80236ea4
branch_0x80236ec4:
    li      r5, -0x1
branch_0x80236ec8:
    cmpwi   r5, 0x0
    bge-    branch_0x80236ed8
    li      r3, 0x0
    blr

branch_0x80236ed8:
    lwz     r0, 0xc(r7)
    mulli   r3, r5, 0xc
    lwz     r5, 0x8(r7)
    mullw   r4, r4, r0
    addi    r0, r3, 0x18
    lhzx    r0, r7, r0
    add     r4, r5, r4
    li      r3, 0x1
    add     r0, r4, r0
    add     r0, r7, r0
    stw     r0, 0x0(r6)
    blr


.globl GetValue__Q24Koga8ToolDataCFiPCcRl
GetValue__Q24Koga8ToolDataCFiPCcRl: # 0x80236f08
    lwz     r7, 0x4(r3)
    lis     r3, 0x200
    subi    r3, r3, 0x27
    lwz     r11, 0x4(r7)
    li      r10, 0x0
    li      r8, 0x1381
    b       branch_0x80236f50

branch_0x80236f24:
    extsb   r9, r9
    slwi    r0, r10, 8
    add     r10, r9, r0
    mulhwu  r9, r8, r10
    subf    r0, r9, r10
    srwi    r0, r0, 1
    add     r0, r0, r9
    srwi    r0, r0, 24
    mullw   r0, r0, r3
    subf    r10, r0, r10
    addi    r5, r5, 0x1
branch_0x80236f50:
    lbz     r9, 0x0(r5)
    extsb.  r0, r9
    bne+    branch_0x80236f24
    cmpwi   r11, 0x0
    mtctr   r11
    li      r5, 0x0
    addi    r3, r5, 0x0
    ble-    branch_0x80236f90
branch_0x80236f70:
    addi    r0, r3, 0x10
    lwzx    r0, r7, r0
    cmplw   r10, r0
    bne-    branch_0x80236f84
    b       branch_0x80236f94

branch_0x80236f84:
    addi    r5, r5, 0x1
    addi    r3, r3, 0xc
    bdnz+      branch_0x80236f70
branch_0x80236f90:
    li      r5, -0x1
branch_0x80236f94:
    cmpwi   r5, 0x0
    bge-    branch_0x80236fa4
    li      r3, 0x0
    blr

branch_0x80236fa4:
    lwz     r0, 0xc(r7)
    mulli   r3, r5, 0xc
    lwz     r5, 0x8(r7)
    mullw   r4, r4, r0
    addi    r0, r3, 0x18
    lhzx    r0, r7, r0
    add     r4, r5, r4
    li      r3, 0x1
    add     r0, r4, r0
    lwzx    r0, r7, r0
    stw     r0, 0x0(r6)
    blr


.globl Attach__Q24Koga8ToolDataFPCv
Attach__Q24Koga8ToolDataFPCv: # 0x80236fd4
    cmplwi  r4, 0x0
    bne-    branch_0x80236fe4
    li      r3, 0x0
    blr

branch_0x80236fe4:
    stw     r4, 0x4(r3)
    li      r3, 0x1
    blr


.globl __dt__Q24Koga8ToolDataFv
__dt__Q24Koga8ToolDataFv: # 0x80236ff0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80237024
    lis     r3, 0x803e
    subi    r3, r3, 0x44a0
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x80237024
    mr      r3, r31
    bl      __dl__FPv
branch_0x80237024:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q24Koga8ToolDataFv
__ct__Q24Koga8ToolDataFv: # 0x8023703c
    lis     r4, 0x803e
    subi    r0, r4, 0x44a0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    blr

