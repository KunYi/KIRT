; HY11P13 has the instructions
;MVFF		MACRO	F1,F2
;		MVF		F1,W,A
;		MVF		F2,F,A
;ENDM

MVLF		MACRO	K,F1
		MVL		K
		MVF		F1,F,A
ENDM
