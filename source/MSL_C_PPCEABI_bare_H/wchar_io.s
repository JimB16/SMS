
.globl fwide
fwide: # 0x8033bc08
    lhz     r0, 0x4(r3)
    extrwi. r0, r0, 3, 23
    bne-    branch_0x8033bc1c
    li      r3, 0x0
    blr

branch_0x8033bc1c:
    lbz     r5, 0x5(r3)
    extrwi  r0, r5, 2, 26
    cmpwi   r0, 0x1
    beq-    branch_0x8033bc80
    bge-    branch_0x8033bc3c
    cmpwi   r0, 0x0
    bge-    branch_0x8033bc48
    blr

branch_0x8033bc3c:
    cmpwi   r0, 0x3
    bgelr-    

    b       branch_0x8033bc78

branch_0x8033bc48:
    cmpwi   r4, 0x0
    ble-    branch_0x8033bc60
    li      r0, 0x2
    insrwi  r5, r0, 2, 26
    stb     r5, 0x5(r3)
    b       branch_0x8033bc70

branch_0x8033bc60:
    bge-    branch_0x8033bc70
    li      r0, 0x1
    insrwi  r5, r0, 2, 26
    stb     r5, 0x5(r3)
branch_0x8033bc70:
    mr      r3, r4
    blr

branch_0x8033bc78:
    li      r3, 0x1
    blr

branch_0x8033bc80:
    li      r3, -0x1
    blr

