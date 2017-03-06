
.globl initHeader__Q28JASystem5VloadFPc
initHeader__Q28JASystem5VloadFPc: # 0x803196b0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    bl      initHeaderM__Q28JASystem5VloadFPcPUcPUc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initHeaderM__Q28JASystem5VloadFPcPUcPUc
initHeaderM__Q28JASystem5VloadFPcPUcPUc: # 0x803196d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    mr.     r29, r4
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    bne-    branch_0x8031974c
    mr      r3, r28
    bl      checkFileExtend__Q28JASystem3DvdFPc
    cmplwi  r3, 0x0
    bne-    branch_0x8031971c
    li      r3, 0x0
    b       branch_0x80319824

branch_0x8031971c:
    bl      allocFromSysDram__Q28JASystem6KernelFUl
    mr.     r29, r3
    bne-    branch_0x80319730
    li      r3, 0x0
    b       branch_0x80319824

branch_0x80319730:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      loadFileDvdT__Q28JASystem3DvdFPcPv
    cmplwi  r3, 0x0
    bne-    branch_0x8031974c
    li      r3, 0x0
    b       branch_0x80319824

branch_0x8031974c:
    mr      r3, r28
    bl      strlen
    subic.  r31, r3, 0x1
    mtctr   r31
    add     r3, r28, r31
    beq-    branch_0x8031977c
branch_0x80319764:
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x2f
    beq-    branch_0x8031977c
    subi    r31, r31, 0x1
    subi    r3, r3, 0x1
    bdnz+      branch_0x80319764
branch_0x8031977c:
    cmplwi  r31, 0x0
    bne-    branch_0x803197a0
    lwz     r0, -0x5b14(r13)
    addi    r4, rtoc, 0x750
    lwz     r3, -0x5b20(r13)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      strcpy
    b       branch_0x803197d4

branch_0x803197a0:
    lwz     r0, -0x5b14(r13)
    mr      r4, r28
    lwz     r3, -0x5b20(r13)
    addi    r5, r31, 0x0
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      strncpy
    lwz     r0, -0x5b14(r13)
    li      r4, 0x0
    lwz     r3, -0x5b20(r13)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    stbx    r4, r3, r31
branch_0x803197d4:
    lwz     r0, -0x5b14(r13)
    add     r4, r31, r28
    lwz     r3, -0x5b1c(r13)
    addi    r4, r4, 0x1
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      strcpy
    lwz     r0, -0x5b14(r13)
    li      r3, 0x1
    lwz     r4, -0x5b18(r13)
    slwi    r0, r0, 2
    stwx    r29, r4, r0
    lwz     r0, -0x5b14(r13)
    lwz     r4, -0x5b18(r13)
    slwi    r0, r0, 2
    lwzx    r4, r4, r0
    stw     r30, 0x8(r4)
    lwz     r4, -0x5b14(r13)
    addi    r0, r4, 0x1
    stw     r0, -0x5b14(r13)
branch_0x80319824:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl getArchiveHandle__Q28JASystem5VloadFPc
getArchiveHandle__Q28JASystem5VloadFPc: # 0x80319844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x8031988c

branch_0x8031986c:
    lwz     r4, -0x5b1c(r13)
    mr      r3, r29
    lwzx    r4, r4, r31
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x80319898
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8031988c:
    lwz     r0, -0x5b14(r13)
    cmplw   r30, r0
    blt+    branch_0x8031986c
branch_0x80319898:
    lwz     r0, -0x5b14(r13)
    cmplw   r30, r0
    beq-    branch_0x803198ac
    slwi    r3, r30, 16
    b       branch_0x803198b0

branch_0x803198ac:
    li      r3, -0x1
branch_0x803198b0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl getRealHandle__Q28JASystem5VloadFUl
getRealHandle__Q28JASystem5VloadFUl: # 0x803198cc
    lwz     r0, -0x5b14(r13)
    srwi    r4, r3, 16
    clrlwi  r5, r3, 16
    cmplw   r4, r0
    blt-    branch_0x803198e8
    li      r3, 0x0
    blr

branch_0x803198e8:
    lwz     r3, -0x5b18(r13)
    slwi    r0, r4, 2
    lwzx    r4, r3, r0
    cmplwi  r4, 0x0
    bne-    branch_0x80319904
    li      r3, 0x0
    blr

branch_0x80319904:
    lwz     r0, 0xc(r4)
    cmplw   r5, r0
    blt-    branch_0x80319918
    li      r3, 0x0
    blr

branch_0x80319918:
    slwi    r3, r5, 5
    addi    r3, r3, 0x20
    add     r3, r4, r3
    b       branch_0x80319934

branch_0x80319928:
    slwi    r3, r0, 5
    addi    r3, r3, 0x20
    add     r3, r4, r3
branch_0x80319934:
    lhz     r0, 0xe(r3)
    cmplwi  r0, 0xffff
    bne+    branch_0x80319928
    blr


.globl checkSize__Q28JASystem5VloadFUl
checkSize__Q28JASystem5VloadFUl: # 0x80319944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      getRealHandle__Q28JASystem5VloadFUl
    cmplwi  r3, 0x0
    bne-    branch_0x80319964
    li      r3, 0x0
    b       branch_0x80319968

branch_0x80319964:
    lwz     r3, 0x1c(r3)
branch_0x80319968:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadFile__Q28JASystem5VloadFUlPUcUlUl
loadFile__Q28JASystem5VloadFUlPUcUlUl: # 0x80319978
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xb8(sp)
    stmw    r27, 0xa4(sp)
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    srwi    r31, r3, 16
    stw     r0, 0x18(sp)
    bl      getRealHandle__Q28JASystem5VloadFUl
    lwz     r4, -0x5b20(r13)
    slwi    r31, r31, 2
    lwz     r30, 0x18(r3)
    addi    r3, sp, 0x1c
    lwzx    r4, r4, r31
    add     r30, r30, r28
    bl      strcpy
    addi    r3, sp, 0x1c
    addi    r4, rtoc, 0x750
    bl      strcat
    lwz     r4, -0x5b18(r13)
    addi    r3, sp, 0x1c
    lwzx    r4, r4, r31
    addi    r4, r4, 0x10
    bl      strcat
    addi    r5, r27, 0x0
    addi    r6, r30, 0x0
    addi    r7, r29, 0x0
    addi    r4, sp, 0x1c
    addi    r8, sp, 0x18
    li      r3, 0x0
    li      r9, 0x0
    bl      loadToDramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v
branch_0x80319a00:
    lwz     r0, 0x18(sp)
    cmplwi  r0, 0x0
    beq+    branch_0x80319a00
    lwz     r3, 0x18(sp)
    lwz     r0, 0xbc(sp)
    lmw     r27, 0xa4(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl loadFileAsync__Q28JASystem5VloadFUlPUcUlUlPFUl_vUl
loadFileAsync__Q28JASystem5VloadFUlPUcUlUlPFUl_vUl: # 0x80319a24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r25, 0xa4(sp)
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    srwi    r31, r3, 16
    bl      getRealHandle__Q28JASystem5VloadFUl
    lwz     r4, -0x5b20(r13)
    slwi    r31, r31, 2
    lwz     r30, 0x18(r3)
    addi    r3, sp, 0x20
    lwzx    r4, r4, r31
    add     r30, r30, r26
    bl      strcpy
    addi    r3, sp, 0x20
    addi    r4, rtoc, 0x750
    bl      strcat
    lwz     r4, -0x5b18(r13)
    addi    r3, sp, 0x20
    lwzx    r4, r4, r31
    addi    r4, r4, 0x10
    bl      strcat
    addi    r3, r29, 0x0
    addi    r5, r25, 0x0
    addi    r6, r30, 0x0
    addi    r7, r27, 0x0
    addi    r9, r28, 0x0
    addi    r4, sp, 0x20
    li      r8, 0x0
    bl      loadToDramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v
    mr      r3, r27
    lmw     r25, 0xa4(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl initVloadBuffers__Q28JASystem5VloadFv
initVloadBuffers__Q28JASystem5VloadFv: # 0x80319ac4
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    lwz     r0, -0x73b8(r13)
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    lwz     r0, -0x73b8(r13)
    li      r5, 0x0
    stw     r3, -0x5b20(r13)
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    lwz     r0, -0x73b8(r13)
    li      r5, 0x0
    stw     r3, -0x5b1c(r13)
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, -0x5b18(r13)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80319b64

branch_0x80319b2c:
    lwz     r4, -0x5b30(r13)
    li      r3, 0x40
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lwz     r4, -0x5b20(r13)
    li      r5, 0x0
    stwx    r3, r4, r31
    li      r3, 0x20
    lwz     r4, -0x5b30(r13)
    bl      __nwa__FUlP7JKRHeapi
    lwz     r4, -0x5b1c(r13)
    addi    r30, r30, 0x1
    stwx    r3, r4, r31
    addi    r31, r31, 0x4
branch_0x80319b64:
    lwz     r0, -0x73b8(r13)
    cmpw    r30, r0
    blt+    branch_0x80319b2c
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr

