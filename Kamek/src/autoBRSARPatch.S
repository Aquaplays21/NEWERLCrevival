
.text
.align 4

.global AutoBRSAR
AutoBRSAR:
    lis r31, 0x7FFF
    ori r31, r31, 0xFFFF
    stw r31, 0x74(r29) # Original instruction
    blr