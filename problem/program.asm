(START)
            @16400
            D=A

            @pscreen
            M=D

            @256
            D=A

            @cont
            M=D

            @32
            D=A
            @cont2
            M=D

            @4096
            D=A
            @arranque
            M=D

            @KBD
            D=M
            @84
            D=D-A
            @ARRIBA
            D;JEQ

            @KBD
            D=M
            @67
            D=D-A
            @SETCL
            D;JEQ

            @START
            0;JMP

(MEDIO)
            @arranque
            D=M

            @SCREEN
            A=A+D
            M=-1

            @arranque
            M=M+1

            @cont2
            M=M-1
            D=M
            @END
            D;JEQ

            @MEDIO
            0;JMP 

(ARRIBA)
            @cont
            D=M

            @MEDIO
            D;JEQ

            @256
            D=A

            @pscreen
            A=M
            M=D
            @cont
            M=M-1
            @32
            D=A
            @pscreen
            M=M+D

            @ARRIBA
            0;JMP


(SETCL)
            @16384
            D=A
            @coord
            M=D
            @8192
            D=A
            @cont
            M=D
            @1
            D=A
            @salto
            M=D
            @color
            M=0
            @RSC
            0;JMP

(RSC)
            @coord
            D=M
            @pscreen
            M=D

(PINTURA)
            @cont
            D=M

            @END
            D;JEQ



            @color
            D=M
            @pscreen
            A=M
            M=D

            @cont
            M=M-1

            @salto
            D=M

            @pscreen
            M=M+D

            @PINTURA
            0;JMP

(END)
            @START
            0;JMP