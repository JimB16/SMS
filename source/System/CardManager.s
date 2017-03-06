
.globl cmdLoop__12TCardManagerFv
cmdLoop__12TCardManagerFv: # 0x802b16b0
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    addi    r29, r3, 0x0
    subi    r31, r4, 0x638
    li      r30, 0x1
    b       branch_0x802b18b8

branch_0x802b16d4:
    addi    r3, r29, 0x44c
    bl      OSLockMutex
    b       branch_0x802b16ec

branch_0x802b16e0:
    addi    r3, r29, 0x464
    addi    r4, r29, 0x44c
    bl      OSWaitCond
branch_0x802b16ec:
    lwz     r0, 0x448(r29)
    cmpwi   r0, 0x0
    beq+    branch_0x802b16e0
    cmplwi  r0, 0x9
    bgt-    branch_0x802b18a8
    slwi    r0, r0, 2
    lwzx    r0, r31, r0
    mtctr   r0
    bctr       
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      mount___12TCardManagerFb
    lbz     r0, 0x125(r29)
    addi    r28, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x802b1744
    lwz     r3, 0x0(r29)
    bl      CARDFormat
    mr.     r28, r3
    bne-    branch_0x802b1744
    li      r0, 0x1
    stb     r0, 0x126(r29)
branch_0x802b1744:
    cmpwi   r28, -0x5
    bne-    branch_0x802b1778
    lbz     r0, 0x125(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802b1778
    lwz     r3, 0x0(r29)
    bl      CARDUnmount
    li      r4, 0x0
    stb     r4, 0x125(r29)
    subi    r3, r13, 0x5fe8
    stb     r4, 0x126(r29)
    lwz     r0, 0x0(r29)
    stbx    r4, r3, r0
branch_0x802b1778:
    stw     r28, 0x128(r29)
    b       branch_0x802b18a8


.incbin "./baserom/code/Text_0x80005600.bin", 0x2ac180, 0x802b18a8 - 0x802b1780
branch_0x802b18a8:
    li      r0, 0x0
    stw     r0, 0x448(r29)
    addi    r3, r29, 0x44c
    bl      OSUnlockMutex
branch_0x802b18b8:
    clrlwi. r0, r30, 24
    bne+    branch_0x802b16d4
    lmw     r25, 0x3c(sp)
    li      r3, 0x0
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl writeOptionBlock___12TCardManagerFv
writeOptionBlock___12TCardManagerFv: # 0x802b18d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r30, r3, 0x0
    addi    r4, sp, 0x20
    bl      open___12TCardManagerFP12CARDFileInfo
    cmpwi   r3, 0x0
    beq-    branch_0x802b1900
    b       branch_0x802b1a5c

branch_0x802b1900:
    lwz     r31, 0x130(r30)
    li      r3, 0x0
    li      r0, 0x7ff
    stw     r3, 0x0(r31)
    mtctr   r0
    addi    r5, r31, 0x0
    li      r4, 0x0
branch_0x802b191c:
    lhz     r6, 0x0(r5)
    not     r0, r6
    add     r4, r4, r6
    lhz     r6, 0x2(r5)
    add     r3, r3, r0
    not     r0, r6
    add     r4, r4, r6
    add     r3, r3, r0
    addi    r5, r5, 0x4
    bdnz+      branch_0x802b191c
    clrlwi  r0, r3, 16
    insrwi  r0, r4, 16, 0
    stw     r0, 0x1ffc(r31)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x20
    li      r5, 0x2000
    li      r6, 0x0
    bl      CARDWrite
    addi    r27, r3, 0x0
    addi    r3, r30, 0xc
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
    cmpwi   r27, 0x0
    beq-    branch_0x802b1988
    b       branch_0x802b19e8

branch_0x802b1988:
    addi    r4, r31, 0x0
    addi    r3, sp, 0x20
    li      r5, 0x2000
    li      r6, 0x0
    bl      CARDRead
    mr.     r27, r3
    bne-    branch_0x802b19e8
    lwz     r28, 0x0(r31)
    addi    r3, r31, 0x0
    addi    r29, r31, 0x4
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r31)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b19d4
    li      r4, 0x3
    b       branch_0x802b19d8

branch_0x802b19d4:
    li      r4, 0x2
branch_0x802b19d8:
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r3, r30, 0xc
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b19e8:
    cmpwi   r27, 0x0
    bne-    branch_0x802b1a0c
    lbz     r0, 0x124(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802b1a0c
    addi    r3, r30, 0x0
    addi    r4, sp, 0x20
    bl      filledInitData___12TCardManagerFP12CARDFileInfo
    mr      r27, r3
branch_0x802b1a0c:
    addi    r3, sp, 0x20
    bl      CARDClose
    cmpwi   r27, 0x0
    bne-    branch_0x802b1a24
    mr      r27, r3
    b       branch_0x802b1a58

branch_0x802b1a24:
    cmpwi   r27, -0x5
    bne-    branch_0x802b1a58
    lbz     r0, 0x125(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802b1a58
    lwz     r3, 0x0(r30)
    bl      CARDUnmount
    li      r4, 0x0
    stb     r4, 0x125(r30)
    subi    r3, r13, 0x5fe8
    stb     r4, 0x126(r30)
    lwz     r0, 0x0(r30)
    stbx    r4, r3, r0
branch_0x802b1a58:
    mr      r3, r27
branch_0x802b1a5c:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl writeBlock___12TCardManagerFUl
writeBlock___12TCardManagerFUl: # 0x802b1a70
    mflr    r0
    slwi    r4, r4, 1
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r26, 0x58(sp)
    addi    r31, r4, 0x1
    mulli   r30, r31, 0x28
    addi    r29, r3, 0x0
    add     r28, r29, r30
    lwz     r0, 0xc(r28)
    cmpwi   r0, 0x0
    beq-    branch_0x802b1aac
    lwz     r0, 0x34(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1ab4
branch_0x802b1aac:
    li      r3, -0x80
    b       branch_0x802b1c7c

branch_0x802b1ab4:
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    bl      open___12TCardManagerFP12CARDFileInfo
    cmpwi   r3, 0x0
    beq-    branch_0x802b1acc
    b       branch_0x802b1c7c

branch_0x802b1acc:
    addi    r3, r30, 0xc
    lwz     r30, 0x130(r29)
    add     r3, r29, r3
    li      r27, 0x0
    bl      decideUseSector__12TCardManagerFPQ212TCardManager9TCriteria
    cmpwi   r3, 0x1
    beq-    branch_0x802b1b00
    bge-    branch_0x802b1b04
    cmpwi   r3, 0x0
    bge-    branch_0x802b1af8
    b       branch_0x802b1b04

branch_0x802b1af8:
    lwz     r27, 0x10(r28)
    b       branch_0x802b1b04

branch_0x802b1b00:
    lwz     r27, 0x38(r28)
branch_0x802b1b04:
    addi    r3, r27, 0x1
    li      r0, 0x7ff
    stw     r3, 0x0(r30)
    mtctr   r0
    addi    r5, r30, 0x0
    li      r3, 0x0
    li      r4, 0x0
branch_0x802b1b20:
    lhz     r6, 0x0(r5)
    not     r0, r6
    add     r4, r4, r6
    lhz     r6, 0x2(r5)
    add     r3, r3, r0
    not     r0, r6
    add     r4, r4, r6
    add     r3, r3, r0
    addi    r5, r5, 0x4
    bdnz+      branch_0x802b1b20
    addi    r0, r27, 0x1
    clrlwi  r0, r0, 31
    add     r27, r31, r0
    clrlwi  r0, r3, 16
    insrwi  r0, r4, 16, 0
    slwi    r28, r27, 13
    stw     r0, 0x1ffc(r30)
    addi    r4, r30, 0x0
    addi    r6, r28, 0x0
    addi    r3, sp, 0x40
    li      r5, 0x2000
    bl      CARDWrite
    mulli   r4, r27, 0x28
    addi    r26, r4, 0xc
    add     r26, r29, r26
    addi    r31, r3, 0x0
    addi    r3, r26, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
    cmpwi   r31, 0x0
    beq-    branch_0x802b1ba8
    b       branch_0x802b1c08

branch_0x802b1ba8:
    addi    r4, r30, 0x0
    addi    r6, r28, 0x0
    addi    r3, sp, 0x40
    li      r5, 0x2000
    bl      CARDRead
    mr.     r31, r3
    bne-    branch_0x802b1c08
    lwz     r28, 0x0(r30)
    addi    r3, r30, 0x0
    addi    r27, r30, 0x4
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r30)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b1bf4
    li      r4, 0x3
    b       branch_0x802b1bf8

branch_0x802b1bf4:
    li      r4, 0x2
branch_0x802b1bf8:
    addi    r3, r26, 0x0
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b1c08:
    cmpwi   r31, 0x0
    bne-    branch_0x802b1c2c
    lbz     r0, 0x124(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802b1c2c
    addi    r3, r29, 0x0
    addi    r4, sp, 0x40
    bl      filledInitData___12TCardManagerFP12CARDFileInfo
    mr      r31, r3
branch_0x802b1c2c:
    addi    r3, sp, 0x40
    bl      CARDClose
    cmpwi   r31, 0x0
    bne-    branch_0x802b1c44
    mr      r31, r3
    b       branch_0x802b1c78

branch_0x802b1c44:
    cmpwi   r31, -0x5
    bne-    branch_0x802b1c78
    lbz     r0, 0x125(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802b1c78
    lwz     r3, 0x0(r29)
    bl      CARDUnmount
    li      r4, 0x0
    stb     r4, 0x125(r29)
    subi    r3, r13, 0x5fe8
    stb     r4, 0x126(r29)
    lwz     r0, 0x0(r29)
    stbx    r4, r3, r0
branch_0x802b1c78:
    mr      r3, r31
branch_0x802b1c7c:
    lmw     r26, 0x58(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl readBlock___12TCardManagerFUl
readBlock___12TCardManagerFUl: # 0x802b1c90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    addi    r26, r4, 0x0
    addi    r28, r3, 0x0
    addi    r4, sp, 0x28
    bl      open___12TCardManagerFP12CARDFileInfo
    mr.     r30, r3
    beq-    branch_0x802b1cc0
    mr      r3, r30
    b       branch_0x802b1ee8

branch_0x802b1cc0:
    slwi    r3, r26, 1
    lwz     r29, 0x130(r28)
    addi    r31, r3, 0x1
    mulli   r0, r31, 0x28
    add     r3, r28, r0
    lwz     r0, 0xc(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1d48
    addi    r4, r29, 0x0
    addi    r3, sp, 0x28
    slwi    r6, r31, 13
    li      r5, 0x2000
    bl      CARDRead
    mr.     r30, r3
    bne-    branch_0x802b1d48
    lwz     r26, 0x0(r29)
    addi    r3, r29, 0x0
    addi    r27, r29, 0x4
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r29)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b1d2c
    li      r4, 0x3
    b       branch_0x802b1d30

branch_0x802b1d2c:
    li      r4, 0x2
branch_0x802b1d30:
    mulli   r3, r31, 0x28
    addi    r3, r3, 0xc
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    add     r3, r28, r3
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b1d48:
    cmpwi   r30, 0x0
    bne-    branch_0x802b1dd4
    mulli   r0, r31, 0x28
    add     r3, r28, r0
    lwz     r0, 0x34(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1dd4
    addi    r0, r31, 0x1
    addi    r4, r29, 0x0
    addi    r3, sp, 0x28
    slwi    r6, r0, 13
    li      r5, 0x2000
    bl      CARDRead
    mr.     r30, r3
    bne-    branch_0x802b1dd4
    lwz     r27, 0x0(r29)
    addi    r3, r29, 0x0
    addi    r26, r29, 0x4
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r29)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b1db4
    li      r4, 0x3
    b       branch_0x802b1db8

branch_0x802b1db4:
    li      r4, 0x2
branch_0x802b1db8:
    addi    r0, r31, 0x1
    mulli   r3, r0, 0x28
    addi    r3, r3, 0xc
    addi    r5, r27, 0x0
    addi    r6, r26, 0x0
    add     r3, r28, r3
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b1dd4:
    cmpwi   r30, 0x0
    bne-    branch_0x802b1ed0
    mulli   r3, r31, 0x28
    addi    r3, r3, 0xc
    add     r3, r28, r3
    bl      decideUseSector__12TCardManagerFPQ212TCardManager9TCriteria
    cmpwi   r3, -0x1
    bne-    branch_0x802b1dfc
    li      r30, -0x80
    b       branch_0x802b1ed0

branch_0x802b1dfc:
    cmpwi   r3, -0x2
    bne-    branch_0x802b1e64
    addi    r3, r29, 0x4
    li      r4, 0x0
    li      r5, 0x1ff8
    bl      memset
    li      r3, 0x0
    li      r0, 0x7ff
    stw     r3, 0x0(r29)
    mtctr   r0
    addi    r5, r29, 0x0
    li      r4, 0x0
branch_0x802b1e2c:
    lhz     r6, 0x0(r5)
    not     r0, r6
    add     r4, r4, r6
    lhz     r6, 0x2(r5)
    add     r3, r3, r0
    not     r0, r6
    add     r4, r4, r6
    add     r3, r3, r0
    addi    r5, r5, 0x4
    bdnz+      branch_0x802b1e2c
    clrlwi  r0, r3, 16
    insrwi  r0, r4, 16, 0
    stw     r0, 0x1ffc(r29)
    b       branch_0x802b1ed0

branch_0x802b1e64:
    add     r31, r31, r3
    addi    r4, r29, 0x0
    addi    r3, sp, 0x28
    slwi    r6, r31, 13
    li      r5, 0x2000
    bl      CARDRead
    mr.     r30, r3
    bne-    branch_0x802b1ed0
    lwz     r27, 0x0(r29)
    addi    r3, r29, 0x0
    addi    r26, r29, 0x4
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r29)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b1eb4
    li      r4, 0x3
    b       branch_0x802b1eb8

branch_0x802b1eb4:
    li      r4, 0x2
branch_0x802b1eb8:
    mulli   r3, r31, 0x28
    addi    r3, r3, 0xc
    addi    r5, r27, 0x0
    addi    r6, r26, 0x0
    add     r3, r28, r3
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b1ed0:
    addi    r3, sp, 0x28
    bl      CARDClose
    cmpwi   r30, 0x0
    bne-    branch_0x802b1ee4
    mr      r30, r3
branch_0x802b1ee4:
    mr      r3, r30
branch_0x802b1ee8:
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl getBookmarkInfos___12TCardManagerFv
getBookmarkInfos___12TCardManagerFv: # 0x802b1efc
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r24, 0x30(sp)
    addi    r31, r3, 0x0
    bl      mount___12TCardManagerFb
    mr.     r27, r3
    beq-    branch_0x802b1f28
    mr      r3, r27
    b       branch_0x802b20bc

branch_0x802b1f28:
    lwz     r0, 0x34(r31)
    li      r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x802b1f40
    li      r3, 0x1
    b       branch_0x802b1fa0

branch_0x802b1f40:
    lwz     r0, 0x5c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1f54
    li      r3, 0x1
    b       branch_0x802b1fa0

branch_0x802b1f54:
    lwz     r0, 0x84(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1f68
    li      r3, 0x1
    b       branch_0x802b1fa0

branch_0x802b1f68:
    lwz     r0, 0xac(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1f7c
    li      r3, 0x1
    b       branch_0x802b1fa0

branch_0x802b1f7c:
    lwz     r0, 0xd4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1f90
    li      r3, 0x1
    b       branch_0x802b1fa0

branch_0x802b1f90:
    lwz     r0, 0xfc(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802b1fa0
    li      r3, 0x1
branch_0x802b1fa0:
    clrlwi. r0, r3, 24
    beq-    branch_0x802b2074
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      open___12TCardManagerFP12CARDFileInfo
    mr.     r27, r3
    bne-    branch_0x802b2074
    lbz     r0, 0x124(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b2060
    li      r25, 0x1
    li      r29, 0x28
branch_0x802b1fd0:
    addi    r26, r29, 0xc
    add     r26, r31, r26
    lwz     r0, 0x0(r26)
    cmpwi   r0, 0x0
    bne-    branch_0x802b2050
    lwz     r24, 0x130(r31)
    addi    r3, sp, 0x18
    slwi    r6, r25, 13
    addi    r4, r24, 0x0
    li      r5, 0x2000
    bl      CARDRead
    mr.     r30, r3
    bne-    branch_0x802b2048
    lwz     r27, 0x0(r24)
    addi    r3, r24, 0x0
    addi    r28, r24, 0x4
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r24)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b2034
    li      r4, 0x3
    b       branch_0x802b2038

branch_0x802b2034:
    li      r4, 0x2
branch_0x802b2038:
    addi    r3, r26, 0x0
    addi    r5, r27, 0x0
    addi    r6, r28, 0x0
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b2048:
    mr.     r27, r30
    bne-    branch_0x802b2060
branch_0x802b2050:
    addi    r25, r25, 0x1
    cmplwi  r25, 0x7
    addi    r29, r29, 0x28
    blt+    branch_0x802b1fd0
branch_0x802b2060:
    addi    r3, sp, 0x18
    bl      CARDClose
    cmpwi   r27, 0x0
    bne-    branch_0x802b2074
    mr      r27, r3
branch_0x802b2074:
    cmpwi   r27, 0x0
    bne-    branch_0x802b20b8
    lwz     r24, 0x46c(r31)
    li      r25, 0x0
    li      r30, 0x0
    li      r29, 0x0
branch_0x802b208c:
    addi    r0, r29, 0x1
    mulli   r3, r0, 0x28
    addi    r3, r3, 0xc
    add     r3, r31, r3
    add     r4, r24, r30
    bl      copyTo__12TCardManagerFPQ212TCardManager9TCriteriaP17TCardBookmarkInfo
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r30, r30, 0x20
    addi    r29, r29, 0x2
    blt+    branch_0x802b208c
branch_0x802b20b8:
    mr      r3, r27
branch_0x802b20bc:
    lmw     r24, 0x30(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl open___12TCardManagerFP12CARDFileInfo
open___12TCardManagerFP12CARDFileInfo: # 0x802b20d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x90(sp)
    stw     r29, 0x8c(sp)
    stw     r28, 0x88(sp)
    addi    r28, r4, 0x0
    li      r4, 0x1
    bl      mount___12TCardManagerFb
    mr.     r29, r3
    bne-    branch_0x802b223c
    li      r30, 0x0
    stb     r30, 0x124(r31)
    lis     r3, 0x803a
    addi    r4, r3, 0x76a8
    lwz     r3, 0x0(r31)
    mr      r5, r28
    bl      CARDOpen
    mr.     r29, r3
    bne-    branch_0x802b21e8
    lwz     r3, 0x0(r31)
    addi    r5, sp, 0x18
    lwz     r4, 0x4(r28)
    bl      CARDGetStatus
    mr.     r29, r3
    bne-    branch_0x802b223c
    lwz     r3, 0x48(sp)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802b2164
    lwz     r3, 0x50(sp)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802b2164
    li      r30, 0x1
branch_0x802b2164:
    clrlwi. r0, r30, 24
    bne-    branch_0x802b223c
    li      r0, 0x1
    stb     r0, 0x124(r31)
    li      r28, 0x0
    li      r30, 0x0
branch_0x802b217c:
    add     r4, r31, r30
    addi    r3, r4, 0xc
    li      r0, 0x1
    stw     r0, 0xc(r4)
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x802b21b4
    li      r0, 0x0
    stw     r0, 0x10(r4)
    addi    r3, r3, 0x8
    li      r4, 0x0
    li      r5, 0x20
    bl      memcpy
    b       branch_0x802b21d4

branch_0x802b21b4:
    cmpwi   r0, 0x1
    bne-    branch_0x802b21d4
    li      r0, 0x0
    stw     r0, 0x10(r4)
    addi    r3, r3, 0x8
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
branch_0x802b21d4:
    addi    r28, r28, 0x1
    cmplwi  r28, 0x7
    addi    r30, r30, 0x28
    blt+    branch_0x802b217c
    b       branch_0x802b223c

branch_0x802b21e8:
    cmpwi   r29, -0x4
    bne-    branch_0x802b223c
    lwz     r3, 0x0(r31)
    addi    r4, sp, 0x14
    addi    r5, sp, 0x10
    bl      CARDFreeBlocks
    mr.     r29, r3
    bne-    branch_0x802b223c
    lis     r3, 0x1
    lwz     r4, 0x14(sp)
    subi    r0, r3, 0x2000
    cmpw    r4, r0
    bge-    branch_0x802b2224
    li      r29, -0x9
    b       branch_0x802b223c

branch_0x802b2224:
    lwz     r0, 0x10(sp)
    cmpwi   r0, 0x1
    bge-    branch_0x802b2238
    li      r29, -0x8
    b       branch_0x802b223c

branch_0x802b2238:
    li      r29, -0x4
branch_0x802b223c:
    lwz     r0, 0x9c(sp)
    mr      r3, r29
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    lwz     r28, 0x88(sp)
    addi    sp, sp, 0x98
    blr


.globl setCardStat___12TCardManagerFP12CARDFileInfo
setCardStat___12TCardManagerFP12CARDFileInfo: # 0x802b2260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r4, 0x0
    addi    r5, sp, 0x18
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4(r4)
    lwz     r3, 0x0(r3)
    bl      CARDGetStatus
    cmpwi   r3, 0x0
    bne-    branch_0x802b248c
    li      r0, 0x44
    stw     r0, 0x48(sp)
    li      r3, 0x2
    li      r0, 0x4
    stw     r0, 0x50(sp)
    cmpwi   r3, 0x8
    slwi    r4, r3, 1
    lbz     r0, 0x46(sp)
    subfic  r3, r3, 0x8
    li      r6, 0x3
    clrrwi  r0, r0, 2
    ori     r0, r0, 0x1
    stb     r0, 0x46(sp)
    lbz     r0, 0x46(sp)
    rlwinm  r0, r0, 0, 30, 28
    stb     r0, 0x46(sp)
    lhz     r0, 0x4c(sp)
    clrrwi  r0, r0, 2
    ori     r0, r0, 0x1
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    clrrwi  r0, r0, 2
    ori     r0, r0, 0x3
    sth     r0, 0x4e(sp)
    lhz     r0, 0x4c(sp)
    rlwinm  r0, r0, 0, 30, 27
    ori     r0, r0, 0x4
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    rlwinm  r0, r0, 0, 30, 27
    ori     r0, r0, 0xc
    sth     r0, 0x4e(sp)
    bge-    branch_0x802b247c
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x802b2450
branch_0x802b2324:
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    not     r7, r5
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    slw     r5, r6, r4
    lhz     r0, 0x4e(sp)
    addi    r4, r4, 0x2
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    not     r7, r5
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    not     r7, r5
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    not     r7, r5
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    not     r7, r5
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    not     r7, r5
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    not     r7, r5
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    not     r7, r5
    lhz     r0, 0x4c(sp)
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    bdnz+      branch_0x802b2324
    andi.   r3, r3, 0x7
    beq-    branch_0x802b247c
branch_0x802b2450:
    mtctr   r3
branch_0x802b2454:
    slw     r5, r6, r4
    lhz     r0, 0x4c(sp)
    not     r7, r5
    and     r0, r0, r7
    sth     r0, 0x4c(sp)
    addi    r4, r4, 0x2
    lhz     r0, 0x4e(sp)
    and     r0, r0, r7
    sth     r0, 0x4e(sp)
    bdnz+      branch_0x802b2454
branch_0x802b247c:
    lwz     r3, 0x0(r30)
    addi    r5, sp, 0x18
    lwz     r4, 0x4(r31)
    bl      CARDSetStatus
branch_0x802b248c:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl filledInitData___12TCardManagerFP12CARDFileInfo
filledInitData___12TCardManagerFP12CARDFileInfo: # 0x802b24a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r22, 0x68(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    lwz     r0, 0xc(r3)
    lis     r3, 0x803e
    lwz     r31, 0x130(r29)
    subi    r24, r3, 0x688
    cmpwi   r0, 0x1
    bne-    branch_0x802b2684
    addi    r3, r31, 0x4
    li      r4, 0x0
    li      r5, 0x1ff8
    bl      memset
    lis     r4, 0xa
    lwz     r3, -0x6060(r13)
    addi    r26, r31, 0x4
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    addi    r25, r3, 0x0
    crxor   6, 6, 6
    slwi    r0, r3, 2
    add     r24, r24, r0
    lwz     r5, 0x28(r24)
    addi    r3, r26, 0x0
    li      r4, 0x20
    bl      snprintf
    bl      OSGetTime
    addi    r5, sp, 0x3c
    bl      OSTicksToCalendarTime
    cmplwi  r25, 0x0
    bne-    branch_0x802b2550
    lwz     r4, 0x4c(sp)
    addi    r3, r26, 0x20
    lwz     r5, 0x3c(r24)
    crxor   6, 6, 6
    lwz     r7, 0x48(sp)
    addi    r6, r4, 0x1
    li      r4, 0x20
    bl      snprintf
    b       branch_0x802b2570

branch_0x802b2550:
    lwz     r4, 0x4c(sp)
    addi    r3, r26, 0x20
    lwz     r5, 0x3c(r24)
    crxor   6, 6, 6
    lwz     r6, 0x48(sp)
    addi    r7, r4, 0x1
    li      r4, 0x20
    bl      snprintf
branch_0x802b2570:
    lwz     r4, 0x8(r29)
    addi    r3, r26, 0x40
    li      r5, 0xe00
    bl      memcpy
    lwz     r4, 0x4(r29)
    addi    r3, r26, 0xe40
    li      r5, 0xa00
    bl      memcpy
    li      r3, 0x0
    li      r0, 0x7ff
    stw     r3, 0x0(r31)
    mtctr   r0
    addi    r5, r31, 0x0
    li      r4, 0x0
branch_0x802b25a8:
    lhz     r6, 0x0(r5)
    not     r0, r6
    add     r4, r4, r6
    lhz     r6, 0x2(r5)
    add     r3, r3, r0
    not     r0, r6
    add     r4, r4, r6
    add     r3, r3, r0
    addi    r5, r5, 0x4
    bdnz+      branch_0x802b25a8
    clrlwi  r0, r3, 16
    insrwi  r0, r4, 16, 0
    stw     r0, 0x1ffc(r31)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x2000
    li      r6, 0x0
    bl      CARDWrite
    addi    r24, r3, 0x0
    addi    r3, r29, 0xc
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
    cmpwi   r24, 0x0
    beq-    branch_0x802b2614
    b       branch_0x802b2674

branch_0x802b2614:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x2000
    li      r6, 0x0
    bl      CARDRead
    mr.     r24, r3
    bne-    branch_0x802b2674
    lwz     r25, 0x0(r31)
    addi    r3, r31, 0x0
    addi    r23, r31, 0x4
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r31)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b2660
    li      r4, 0x3
    b       branch_0x802b2664

branch_0x802b2660:
    li      r4, 0x2
branch_0x802b2664:
    addi    r5, r25, 0x0
    addi    r6, r23, 0x0
    addi    r3, r29, 0xc
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b2674:
    cmpwi   r24, 0x0
    beq-    branch_0x802b2684
    mr      r3, r24
    b       branch_0x802b27c8

branch_0x802b2684:
    addi    r3, r31, 0x4
    li      r4, 0x0
    li      r5, 0x1ff8
    bl      memset
    li      r3, 0x0
    li      r0, 0x7ff
    stw     r3, 0x0(r31)
    mtctr   r0
    addi    r5, r31, 0x0
    li      r4, 0x0
branch_0x802b26ac:
    lhz     r6, 0x0(r5)
    not     r0, r6
    add     r4, r4, r6
    lhz     r6, 0x2(r5)
    add     r3, r3, r0
    not     r0, r6
    add     r4, r4, r6
    add     r3, r3, r0
    addi    r5, r5, 0x4
    bdnz+      branch_0x802b26ac
    clrlwi  r0, r3, 16
    insrwi  r0, r4, 16, 0
    stw     r0, 0x1ffc(r31)
    addi    r28, r31, 0x4
    li      r26, 0x1
    li      r25, 0x2000
    li      r24, 0x28
branch_0x802b26f0:
    add     r22, r29, r24
    lwz     r0, 0xc(r22)
    cmpwi   r0, 0x1
    bne-    branch_0x802b27a8
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r6, r25, 0x0
    li      r5, 0x2000
    bl      CARDWrite
    addi    r27, r22, 0xc
    addi    r23, r3, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
    cmpwi   r23, 0x0
    beq-    branch_0x802b273c
    b       branch_0x802b2798

branch_0x802b273c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r6, r25, 0x0
    li      r5, 0x2000
    bl      CARDRead
    mr.     r23, r3
    bne-    branch_0x802b2798
    lwz     r22, 0x0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1ffc
    bl      CalcCheckSum__FPCvUl
    lwz     r0, 0x1ffc(r31)
    subf    r0, r0, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    beq-    branch_0x802b2784
    li      r4, 0x3
    b       branch_0x802b2788

branch_0x802b2784:
    li      r4, 0x2
branch_0x802b2788:
    addi    r3, r27, 0x0
    addi    r5, r22, 0x0
    addi    r6, r28, 0x0
    bl      set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
branch_0x802b2798:
    cmpwi   r23, 0x0
    beq-    branch_0x802b27a8
    mr      r3, r23
    b       branch_0x802b27c8

branch_0x802b27a8:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x7
    addi    r25, r25, 0x2000
    addi    r24, r24, 0x28
    blt+    branch_0x802b26f0
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      setCardStat___12TCardManagerFP12CARDFileInfo
branch_0x802b27c8:
    lmw     r22, 0x68(sp)
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl createFile___12TCardManagerFv
createFile___12TCardManagerFv: # 0x802b27dc
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    bl      mount___12TCardManagerFb
    mr.     r30, r3
    bne-    branch_0x802b28c0
    lis     r4, 0x803a
    lwz     r3, 0x0(r31)
    lis     r5, 0x1
    addi    r4, r4, 0x76a8
    subi    r5, r5, 0x2000
    addi    r6, sp, 0x10
    bl      CARDCreate
    mr.     r30, r3
    bne-    branch_0x802b28c0
    li      r29, 0x0
    li      r30, 0x0
branch_0x802b2834:
    add     r4, r31, r30
    addi    r3, r4, 0xc
    li      r0, 0x1
    stw     r0, 0xc(r4)
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x802b286c
    li      r0, 0x0
    stw     r0, 0x10(r4)
    addi    r3, r3, 0x8
    li      r4, 0x0
    li      r5, 0x20
    bl      memcpy
    b       branch_0x802b288c

branch_0x802b286c:
    cmpwi   r0, 0x1
    bne-    branch_0x802b288c
    li      r0, 0x0
    stw     r0, 0x10(r4)
    addi    r3, r3, 0x8
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
branch_0x802b288c:
    addi    r29, r29, 0x1
    cmplwi  r29, 0x7
    addi    r30, r30, 0x28
    blt+    branch_0x802b2834
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    bl      filledInitData___12TCardManagerFP12CARDFileInfo
    addi    r30, r3, 0x0
    addi    r3, sp, 0x10
    bl      CARDClose
    cmpwi   r30, 0x0
    bne-    branch_0x802b28c0
    mr      r30, r3
branch_0x802b28c0:
    cmpwi   r30, -0x5
    bne-    branch_0x802b28f4
    lbz     r0, 0x125(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802b28f4
    lwz     r3, 0x0(r31)
    bl      CARDUnmount
    li      r4, 0x0
    stb     r4, 0x125(r31)
    subi    r3, r13, 0x5fe8
    stb     r4, 0x126(r31)
    lwz     r0, 0x0(r31)
    stbx    r4, r3, r0
branch_0x802b28f4:
    lwz     r0, 0x3c(sp)
    mr      r3, r30
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl mount___12TCardManagerFb
mount___12TCardManagerFb: # 0x802b2914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    subi    r29, r13, 0x5fe8
    stw     r28, 0x28(sp)
    addi    r28, r4, 0x0
    lwz     r3, 0x0(r3)
    lbzx    r0, r29, r3
    cmplwi  r0, 0x0
    beq-    branch_0x802b2970
    lbz     r0, 0x125(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802b2970
    bl      CARDUnmount
    li      r3, 0x0
    stb     r3, 0x125(r31)
    stb     r3, 0x126(r31)
    lwz     r0, 0x0(r31)
    stbx    r3, r29, r0
branch_0x802b2970:
    clrlwi. r0, r28, 24
    beq-    branch_0x802b29b8
    lbz     r3, 0x125(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802b29b8
    lbz     r0, 0x126(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b29b8
    cmplwi  r3, 0x0
    beq-    branch_0x802b29b8
    lwz     r3, 0x0(r31)
    bl      CARDUnmount
    li      r4, 0x0
    stb     r4, 0x125(r31)
    subi    r3, r13, 0x5fe8
    stb     r4, 0x126(r31)
    lwz     r0, 0x0(r31)
    stbx    r4, r3, r0
branch_0x802b29b8:
    lbz     r0, 0x125(r31)
    li      r29, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x802b2b3c
    li      r0, 0x0
    stb     r0, 0x126(r31)
branch_0x802b29d0:
    lwz     r3, 0x0(r31)
    addi    r5, sp, 0x14
    li      r4, 0x0
    bl      CARDProbeEx
    cmpwi   r3, 0x0
    bne-    branch_0x802b29f8
    lwz     r0, 0x14(sp)
    cmpwi   r0, 0x2000
    beq-    branch_0x802b29f8
    li      r3, -0x100
branch_0x802b29f8:
    addi    r29, r3, 0x0
    cmpwi   r29, -0x1
    bne-    branch_0x802b2a0c
    bl      OSYieldThread
    b       branch_0x802b29d0

branch_0x802b2a0c:
    cmpwi   r29, 0x0
    bne-    branch_0x802b2b3c
    li      r30, 0x0
    addi    r29, r30, 0x0
    li      r28, 0x0
branch_0x802b2a20:
    add     r4, r31, r30
    addi    r3, r4, 0xc
    stw     r29, 0xc(r4)
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x802b2a50
    stw     r29, 0x10(r4)
    addi    r3, r3, 0x8
    li      r4, 0x0
    li      r5, 0x20
    bl      memcpy
    b       branch_0x802b2a6c

branch_0x802b2a50:
    cmpwi   r0, 0x1
    bne-    branch_0x802b2a6c
    stw     r29, 0x10(r4)
    addi    r3, r3, 0x8
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
branch_0x802b2a6c:
    addi    r28, r28, 0x1
    cmplwi  r28, 0x7
    addi    r30, r30, 0x28
    blt+    branch_0x802b2a20
    lis     r4, 0x802b
    lwz     r3, 0x0(r31)
    addi    r5, r4, 0x2b60
    lwz     r4, 0x12c(r31)
    bl      CARDMount
    addi    r29, r3, 0x0
    cmpwi   r29, -0x6
    beq-    branch_0x802b2ab8
    bge-    branch_0x802b2aac
    cmpwi   r29, -0xd
    beq-    branch_0x802b2b34
    b       branch_0x802b2b3c

branch_0x802b2aac:
    cmpwi   r29, 0x0
    beq-    branch_0x802b2ab8
    b       branch_0x802b2b3c

branch_0x802b2ab8:
    lwz     r3, 0x0(r31)
    bl      CARDCheck
    addi    r29, r3, 0x0
    cmpwi   r29, -0x5
    beq-    branch_0x802b2b04
    bge-    branch_0x802b2adc
    cmpwi   r29, -0x6
    bge-    branch_0x802b2af8
    b       branch_0x802b2b3c

branch_0x802b2adc:
    cmpwi   r29, 0x0
    beq-    branch_0x802b2ae8
    b       branch_0x802b2b3c

branch_0x802b2ae8:
    li      r0, 0x1
    stb     r0, 0x125(r31)
    stb     r0, 0x126(r31)
    b       branch_0x802b2b3c

branch_0x802b2af8:
    li      r0, 0x1
    stb     r0, 0x125(r31)
    b       branch_0x802b2b3c

branch_0x802b2b04:
    lbz     r0, 0x125(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802b2b3c
    lwz     r3, 0x0(r31)
    bl      CARDUnmount
    li      r4, 0x0
    stb     r4, 0x125(r31)
    subi    r3, r13, 0x5fe8
    stb     r4, 0x126(r31)
    lwz     r0, 0x0(r31)
    stbx    r4, r3, r0
    b       branch_0x802b2b3c

branch_0x802b2b34:
    li      r0, 0x1
    stb     r0, 0x125(r31)
branch_0x802b2b3c:
    lwz     r0, 0x3c(sp)
    mr      r3, r29
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl detachCallback__Fll
detachCallback__Fll: # 0x802b2b60
    li      r0, 0x1
    subi    r4, r13, 0x5fe8
    stbx    r0, r4, r3
    blr


.globl getLastStatus__12TCardManagerFv
getLastStatus__12TCardManagerFv: # 0x802b2b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSTryLockMutex
    cmpwi   r3, 0x0
    beq-    branch_0x802b2bac
    lwz     r31, 0x128(r30)
    addi    r3, r30, 0x44c
    bl      OSUnlockMutex
    mr      r3, r31
    b       branch_0x802b2bb0

branch_0x802b2bac:
    li      r3, -0x1
branch_0x802b2bb0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl writeOptionBlock__12TCardManagerFv
writeOptionBlock__12TCardManagerFv: # 0x802b2bc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x44c
    bl      OSLockMutex
    li      r0, 0x8
    stw     r0, 0x448(r31)
    li      r0, -0x1
    addi    r3, r31, 0x44c
    stw     r0, 0x128(r31)
    bl      OSUnlockMutex
    addi    r3, r31, 0x464
    bl      OSSignalCond
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getOptionWriteStream__12TCardManagerFP21JSUMemoryOutputStream
getOptionWriteStream__12TCardManagerFP21JSUMemoryOutputStream: # 0x802b2c18
    mflr    r0
    li      r5, 0x1ff8
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    addi    r27, r4, 0x0
    mr      r26, r3
    li      r4, 0x0
    lwz     r28, 0x130(r3)
    lis     r3, 0x803e
    subi    r31, r3, 0x688
    addi    r3, r28, 0x4
    bl      memset
    lis     r4, 0xa
    lwz     r3, -0x6060(r13)
    addi    r29, r28, 0x4
    addi    r4, r4, 0x1
    bl      getFlag__12TFlagManagerCFUl
    addi    r30, r3, 0x0
    crxor   6, 6, 6
    slwi    r0, r3, 2
    add     r31, r31, r0
    lwz     r5, 0x28(r31)
    addi    r3, r29, 0x0
    li      r4, 0x20
    bl      snprintf
    bl      OSGetTime
    addi    r5, sp, 0x14
    bl      OSTicksToCalendarTime
    cmplwi  r30, 0x0
    bne-    branch_0x802b2cb8
    lwz     r4, 0x24(sp)
    addi    r3, r29, 0x20
    lwz     r5, 0x3c(r31)
    crxor   6, 6, 6
    lwz     r7, 0x20(sp)
    addi    r6, r4, 0x1
    li      r4, 0x20
    bl      snprintf
    b       branch_0x802b2cd8

branch_0x802b2cb8:
    lwz     r4, 0x24(sp)
    addi    r3, r29, 0x20
    lwz     r5, 0x3c(r31)
    crxor   6, 6, 6
    lwz     r6, 0x20(sp)
    addi    r7, r4, 0x1
    li      r4, 0x20
    bl      snprintf
branch_0x802b2cd8:
    lwz     r4, 0x8(r26)
    addi    r3, r29, 0x40
    li      r5, 0xe00
    bl      memcpy
    lwz     r4, 0x4(r26)
    addi    r3, r29, 0xe40
    li      r5, 0xa00
    bl      memcpy
    addi    r3, r27, 0x0
    addi    r4, r28, 0x1844
    li      r5, 0x7b8
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl getOptionReadStream__12TCardManagerFP20JSUMemoryInputStream
getOptionReadStream__12TCardManagerFP20JSUMemoryInputStream: # 0x802b2d1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x130(r3)
    addi    r3, r4, 0x0
    addi    r4, r5, 0x1844
    li      r5, 0x7b8
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl readOptionBlock__12TCardManagerFv
readOptionBlock__12TCardManagerFv: # 0x802b2d4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x44c
    bl      OSLockMutex
    li      r0, 0x7
    stw     r0, 0x448(r31)
    li      r0, -0x1
    addi    r3, r31, 0x44c
    stw     r0, 0x128(r31)
    bl      OSUnlockMutex
    addi    r3, r31, 0x464
    bl      OSSignalCond
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl writeBlock__12TCardManagerFUl
writeBlock__12TCardManagerFUl: # 0x802b2d9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSLockMutex
    stw     r31, 0x474(r30)
    li      r3, 0x6
    li      r0, -0x1
    stw     r3, 0x448(r30)
    addi    r3, r30, 0x44c
    stw     r0, 0x128(r30)
    bl      OSUnlockMutex
    addi    r3, r30, 0x464
    bl      OSSignalCond
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getWriteStream__12TCardManagerFP21JSUMemoryOutputStream
getWriteStream__12TCardManagerFP21JSUMemoryOutputStream: # 0x802b2dfc
    mflr    r0
    li      r5, 0x1ff8
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    lwz     r31, 0x130(r3)
    addi    r3, r31, 0x4
    bl      memset
    addi    r4, r31, 0x4
    addi    r3, r30, 0x0
    li      r5, 0x1ff8
    bl      setBuffer__21JSUMemoryOutputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getReadStream__12TCardManagerFP20JSUMemoryInputStream
getReadStream__12TCardManagerFP20JSUMemoryInputStream: # 0x802b2e50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x130(r3)
    addi    r3, r4, 0x0
    addi    r4, r5, 0x4
    li      r5, 0x1ff8
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl readBlock__12TCardManagerFUl
readBlock__12TCardManagerFUl: # 0x802b2e80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSLockMutex
    stw     r31, 0x474(r30)
    li      r3, 0x5
    li      r0, -0x1
    stw     r3, 0x448(r30)
    addi    r3, r30, 0x44c
    stw     r0, 0x128(r30)
    bl      OSUnlockMutex
    addi    r3, r30, 0x464
    bl      OSSignalCond
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo
getBookmarkInfos__12TCardManagerFP17TCardBookmarkInfo: # 0x802b2ee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSLockMutex
    stw     r31, 0x46c(r30)
    li      r3, 0x3
    li      r0, -0x1
    stw     r3, 0x448(r30)
    addi    r3, r30, 0x44c
    stw     r0, 0x128(r30)
    bl      OSUnlockMutex
    addi    r3, r30, 0x464
    bl      OSSignalCond
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createFile__12TCardManagerFv
createFile__12TCardManagerFv: # 0x802b2f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x44c
    bl      OSLockMutex
    li      r0, 0x2
    stw     r0, 0x448(r31)
    li      r0, -0x1
    addi    r3, r31, 0x44c
    stw     r0, 0x128(r31)
    bl      OSUnlockMutex
    addi    r3, r31, 0x464
    bl      OSSignalCond
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl format__12TCardManagerFv
format__12TCardManagerFv: # 0x802b2f90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x44c
    bl      OSLockMutex
    li      r0, 0x1
    stw     r0, 0x448(r31)
    li      r0, -0x1
    addi    r3, r31, 0x44c
    stw     r0, 0x128(r31)
    bl      OSUnlockMutex
    addi    r3, r31, 0x464
    bl      OSSignalCond
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl unmount__12TCardManagerFv
unmount__12TCardManagerFv: # 0x802b2fe0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSLockMutex
    lbz     r0, 0x125(r30)
    li      r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x802b3030
    lwz     r3, 0x0(r30)
    bl      CARDUnmount
    li      r5, 0x0
    stb     r5, 0x125(r30)
    subi    r4, r13, 0x5fe8
    stb     r5, 0x126(r30)
    lwz     r0, 0x0(r30)
    stbx    r5, r4, r0
branch_0x802b3030:
    stw     r3, 0x128(r30)
    addi    r31, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl probe__12TCardManagerFv
probe__12TCardManagerFv: # 0x802b305c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSTryLockMutex
    cmpwi   r3, 0x0
    beq-    branch_0x802b30c4
    lwz     r3, 0x0(r30)
    addi    r5, sp, 0xc
    li      r4, 0x0
    bl      CARDProbeEx
    cmpwi   r3, 0x0
    bne-    branch_0x802b30ac
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x2000
    beq-    branch_0x802b30ac
    li      r3, -0x100
branch_0x802b30ac:
    stw     r3, 0x128(r30)
    addi    r31, r3, 0x0
    addi    r3, r30, 0x44c
    bl      OSUnlockMutex
    mr      r3, r31
    b       branch_0x802b30c8

branch_0x802b30c4:
    li      r3, -0x1
branch_0x802b30c8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__12TCardManagerFv
__dt__12TCardManagerFv: # 0x802b30e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr.     r30, r3
    beq-    branch_0x802b3170
    lbz     r0, 0x125(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802b312c
    lwz     r3, 0x0(r30)
    bl      CARDUnmount
    li      r4, 0x0
    stb     r4, 0x125(r30)
    subi    r3, r13, 0x5fe8
    stb     r4, 0x126(r30)
    lwz     r0, 0x0(r30)
    stbx    r4, r3, r0
branch_0x802b312c:
    addi    r3, r30, 0x44c
    bl      OSLockMutex
    li      r0, 0x9
    stw     r0, 0x448(r30)
    li      r0, -0x1
    addi    r3, r30, 0x44c
    stw     r0, 0x128(r30)
    bl      OSUnlockMutex
    addi    r3, r30, 0x464
    bl      OSSignalCond
    addi    r3, r30, 0x138
    addi    r4, sp, 0x14
    bl      OSJoinThread
    extsh.  r0, r31
    ble-    branch_0x802b3170
    mr      r3, r30
    bl      __dl__FPv
branch_0x802b3170:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__12TCardManagerFPvPvllPvUl
__ct__12TCardManagerFPvPvllPvUl: # 0x802b318c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r27, r5, 0x0
    addi    r28, r7, 0x0
    mr      r25, r3
    li      r31, 0x0
    addi    r26, r4, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    li      r5, 0x0
    li      r7, 0x7
    stw     r6, 0x0(r3)
    lis     r3, 0x802b
    addi    r0, r3, 0x3258
    stw     r31, 0x4(r25)
    mr      r4, r0
    addi    r3, r25, 0xc
    stw     r31, 0x8(r25)
    li      r6, 0x28
    bl      __construct_array
    stb     r31, 0x124(r25)
    li      r0, -0x3
    addi    r3, r25, 0x44c
    stb     r31, 0x125(r25)
    stb     r31, 0x126(r25)
    stw     r0, 0x128(r25)
    stw     r27, 0x12c(r25)
    stw     r26, 0x130(r25)
    stw     r31, 0x448(r25)
    bl      OSInitMutex
    addi    r3, r25, 0x464
    bl      OSInitCond
    lis     r3, 0x802b
    addi    r4, r3, 0x3264
    addi    r5, r25, 0x0
    addi    r7, r30, 0x0
    addi    r8, r28, 0x0
    addi    r3, r25, 0x138
    add     r6, r29, r30
    li      r9, 0x0
    bl      OSCreateThread
    addi    r3, r25, 0x138
    bl      OSResumeThread
    mr      r3, r25
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__Q212TCardManager9TCriteriaFv
__ct__Q212TCardManager9TCriteriaFv: # 0x802b3258
    li      r0, 0x0
    stw     r0, 0x0(r3)
    blr


.globl cardmain__FPv
cardmain__FPv: # 0x802b3264
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      cmdLoop__12TCardManagerFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl copyTo__12TCardManagerFPQ212TCardManager9TCriteriaP17TCardBookmarkInfo
copyTo__12TCardManagerFPQ212TCardManager9TCriteriaP17TCardBookmarkInfo: # 0x802b3284
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    addi    r27, r3, 0x0
    addi    r30, r4, 0x0
    bl      decideUseSector__12TCardManagerFPQ212TCardManager9TCriteria
    cmpwi   r3, -0x1
    beq-    branch_0x802b3404
    bge-    branch_0x802b32b8
    cmpwi   r3, -0x2
    bge-    branch_0x802b32c4
    b       branch_0x802b340c

branch_0x802b32b8:
    cmpwi   r3, 0x2
    bge-    branch_0x802b340c
    b       branch_0x802b32f0

branch_0x802b32c4:
    li      r0, 0x0
    stw     r0, 0x0(r30)
    stw     r0, 0x4(r30)
    stw     r0, 0xc(r30)
    stw     r0, 0x8(r30)
    stw     r0, 0x14(r30)
    stw     r0, 0x10(r30)
    stw     r0, 0x18(r30)
    sth     r0, 0x1c(r30)
    sth     r0, 0x1e(r30)
    b       branch_0x802b340c

branch_0x802b32f0:
    li      r7, 0x0
    stw     r7, 0x0(r30)
    addi    r31, sp, 0x68
    lis     r4, 0x803b
    stw     r31, 0x5c(sp)
    mulli   r6, r3, 0x28
    lwz     r3, 0x5c(sp)
    subi    r0, r4, 0xf0c
    stw     r0, 0x0(r3)
    lis     r5, 0x803e
    addi    r0, r5, 0x184
    stb     r7, 0x4(r3)
    lis     r4, 0x803e
    addi    r28, r4, 0x160
    stw     r0, 0x0(r3)
    lis     r5, 0x803e
    addi    r29, r5, 0x1c8
    stw     r28, 0x0(r3)
    addi    r4, r6, 0x8
    add     r4, r27, r4
    stw     r29, 0x0(r3)
    li      r5, 0x1c
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x38
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x38(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x60
    stw     r0, 0x4(r30)
    li      r5, 0x8
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x60(sp)
    mr      r3, r31
    lwz     r6, 0x64(sp)
    addi    r4, sp, 0x60
    li      r5, 0x8
    stw     r6, 0xc(r30)
    stw     r0, 0x8(r30)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x60(sp)
    mr      r3, r31
    lwz     r6, 0x64(sp)
    addi    r4, sp, 0x34
    li      r5, 0x4
    stw     r6, 0x14(r30)
    stw     r0, 0x10(r30)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x34(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x32
    stw     r0, 0x18(r30)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x32(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x30
    sth     r0, 0x1c(r30)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x30(sp)
    addi    r3, r31, 0x0
    li      r4, 0x0
    sth     r0, 0x1e(r30)
    stw     r29, 0x68(sp)
    stw     r28, 0x68(sp)
    bl      __dt__14JSUInputStreamFv
    b       branch_0x802b340c

branch_0x802b3404:
    li      r0, 0x1
    stw     r0, 0x0(r30)
branch_0x802b340c:
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl decideUseSector__12TCardManagerFPQ212TCardManager9TCriteria
decideUseSector__12TCardManagerFPQ212TCardManager9TCriteria: # 0x802b3420
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x802b3434
    li      r3, -0x2
    blr

branch_0x802b3434:
    cmpwi   r0, 0x2
    bne-    branch_0x802b3458
    lwz     r0, 0x28(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x802b3450
    li      r3, -0x1
    blr

branch_0x802b3450:
    li      r3, 0x1
    blr

branch_0x802b3458:
    lwz     r0, 0x28(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x802b346c
    li      r3, 0x0
    blr

branch_0x802b346c:
    lwz     r4, 0x4(r3)
    lwz     r0, 0x2c(r3)
    cmplw   r4, r0
    blt-    branch_0x802b3484
    li      r0, 0x0
    b       branch_0x802b3488

branch_0x802b3484:
    li      r0, 0x1
branch_0x802b3488:
    mr      r3, r0
    blr


.globl set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv
set__Q212TCardManager9TCriteriaFQ312TCardManager9TCriteria11TEBlockStatUlPCv: # 0x802b3490
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stw     r4, 0x0(r3)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x802b34c4
    stw     r5, 0x4(r3)
    addi    r4, r6, 0x0
    addi    r3, r3, 0x8
    li      r5, 0x20
    bl      memcpy
    b       branch_0x802b34e4

branch_0x802b34c4:
    cmpwi   r0, 0x1
    bne-    branch_0x802b34e4
    li      r0, 0x0
    stw     r0, 0x4(r3)
    addi    r3, r3, 0x8
    li      r4, 0x0
    li      r5, 0x20
    bl      memset
branch_0x802b34e4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CalcCheckSum__FPCvUl
CalcCheckSum__FPCvUl: # 0x802b34f4
    srwi    r4, r4, 1
    cmplwi  r4, 0x0
    li      r7, 0x0
    li      r6, 0x0
    ble-    branch_0x802b35c0
    srwi.   r0, r4, 3
    mtctr   r0
    beq-    branch_0x802b35a4
branch_0x802b3514:
    lhz     r5, 0x0(r3)
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x2(r3)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x4(r3)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x6(r3)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x8(r3)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0xa(r3)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0xc(r3)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0xe(r3)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    add     r7, r7, r0
    addi    r3, r3, 0x10
    bdnz+      branch_0x802b3514
    andi.   r4, r4, 0x7
    beq-    branch_0x802b35c0
branch_0x802b35a4:
    mtctr   r4
branch_0x802b35a8:
    lhz     r5, 0x0(r3)
    addi    r3, r3, 0x2
    not     r0, r5
    add     r6, r6, r5
    add     r7, r7, r0
    bdnz+      branch_0x802b35a8
branch_0x802b35c0:
    clrlwi  r3, r7, 16
    insrwi  r3, r6, 16, 0
    blr

