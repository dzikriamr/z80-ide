DIVIDE: LD B, 08H
	LD L, 0
	LD C, L
NXTBIT: CALL DIVE
	CALL RESULT
	DEC B
	JR NZ, NXTBIT
	RET
DIVE: 	LD A, D
	RLCA
	LD D, A
	LD A,C
	RLA
	;OUT (00H),A
	CP E
	RET C
	SUB E
	;OUT (00H),A
	RET
RESULT:	LD C, A
	CCF
	LD A, L
	RLA
	LD L, A
	RET	