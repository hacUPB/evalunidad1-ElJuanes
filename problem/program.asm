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
            @comienzo
            M=D

            @KBD
            D=M
            @84
            D=D-A
            @VERTICAL
            D;JEQ

            @KBD
            D=M
            @67
            D=D-A
            @SETCL
            D;JEQ

            @START
            0;JMP
(VERTICAL)
            @cont
            D=M

            @HORIZONTAL
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

            @VERTICAL
            0;JMP

(HORIZONTAL)
            @comienzo
            D=M

            @SCREEN
            A=A+D
            M=-1

            @comienzo
            M=M+1

            @cont2
            M=M-1
            D=M
            @END
            D;JEQ

            @HORIZONTAL
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
            @RECT
            0;JMP

(RECT)
            @coord
            D=M
            @pscreen
            M=D

(PAINT)
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

            @PAINT
            0;JMP

(END)
            @START
            0;JMP