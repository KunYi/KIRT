

;=======================
; pesudo C code
; MATHA(M:08AH)
; MATHB(M:08BH)
;   void delay(uint delay_ms)
;   {
;       MATHA = delay_ms;
;       do {       
;             MATHB = 0x55;
;             while(MATHB--) {};
;       while (MATHA--);
;   }
DELAY1MS:
    MVLF    001H, MATHA
    JMP     LOOP1
    
DELAY10MS:
    MVLF    0AH, MATHA
    JMP     LOOP1
  
DELAY64MS:
    MVLF    040H, MATHA
    JMP     LOOP1

DELAY125MS:
    MVLF    7DH, MATHA
    JMP     LOOP1

DELAY250MS:
    MVLF    0FAH, MATHA
    JMP     LOOP1
    
;=====
LOOP1:        
    MVLF    055H, MATHB

LOOP2:
    DCSZ    MATHB,F,A       ; while (M:08BH) {};
    JMP     LOOP2           ;
    DCSZ    MATHA,F,A
    JMP     LOOP1           ;LOOP1 =B2H
    RET    