(LOOP)
    @KBD
    D=M
    @DRAW_BOX
    D;JNE
    @CLEAR_BOX
    0;JMP

(DRAW_BOX)
    @16544
    D=A
    @addr
    M=D

    @20
    D=A
    @rows
    M=D

(DRAW_ROW_LOOP)
    @rows
    D=M
    @LOOP
    D;JEQ

    @addr
    A=M
    M=-1

    A=A+1
    M=-1

    @32
    D=A
    @addr
    M=M+D

    @rows
    M=M-1

    @DRAW_ROW_LOOP
    0;JMP

(CLEAR_BOX)
    @16544
    D=A
    @addr
    M=D

    @20
    D=A
    @rows
    M=D

(CLEAR_ROW_LOOP)
    @rows
    D=M
    @LOOP
    D;JEQ

    @addr
    A=M
    M=0

    A=A+1
    M=0

    @32
    D=A
    @addr
    M=M+D

    @rows
    M=M-1

    @CLEAR_ROW_LOOP
    0;JMP
