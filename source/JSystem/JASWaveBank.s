
.globl getCurrentHeap__Q28JASystem9TWaveBankFv
getCurrentHeap__Q28JASystem9TWaveBankFv: # 0x80310898
    lwz     r3, R13Off_m0x5c88(r13)
    cmplwi  r3, 0x0
    bnelr-    

    lwz     r3, R13Off_m0x5b30(r13)
    blr

