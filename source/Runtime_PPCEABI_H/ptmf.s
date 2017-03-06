
.globl __ptmf_test
__ptmf_test: # 0x803381d4
    lwz     r5, 0x0(r3)
    lwz     r6, 0x4(r3)
    lwz     r7, 0x8(r3)
    li      r3, 0x1
    cmpwi   r5, 0x0
    cmpwi   cr6, r6, 0x0
    cmpwi   cr7, r7, 0x0
    bnelr-    

    bnelr-    cr6, 

    bnelr-    cr7, 

    li      r3, 0x0
    blr


.globl __ptmf_scall
__ptmf_scall: # 0x80338204
    lwz     r0, 0x0(r12)
    lwz     r11, 0x4(r12)
    lwz     r12, 0x8(r12)
    add     r3, r3, r0
    cmpwi   r11, 0x0
    blt-    branch_0x80338224
    lwzx    r12, r3, r12
    lwzx    r12, r12, r11
branch_0x80338224:
    mtctr   r12
    bctr       
