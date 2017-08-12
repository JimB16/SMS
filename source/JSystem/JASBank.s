
.globl getCurrentHeap__Q28JASystem5TBankFv
getCurrentHeap__Q28JASystem5TBankFv: # 0x8030da44
    lwz     r3, R13Off_m0x5cb8(r13)
    cmplwi  r3, 0x0
    bnelr-    

    lwz     r3, R13Off_m0x5b30(r13)
    blr

