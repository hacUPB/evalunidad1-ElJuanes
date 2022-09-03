// Juan Esteban Aristizábal Ortiz
// 165728
// juan.aristizabalo@upb.edu.co

   @R0
   D=M
   @n
   M=D

   @i
   M=0

   @SCREEN
   D=A
   @adress
   M=D
(LOOP)
   @i
   D=M
   @n
   D=D-M
   @END
   D;JGT

   @adress
   A=M
   M=-1

   @i
   M=M+1
   @32
   D=A
   @adress
   M=D+M
   @LOOP
   0;JMP

(END)
   @END

