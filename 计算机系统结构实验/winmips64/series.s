; MIPs version of series.cpp

       .data
x:     .double 0.6
s:     .double 1.0

       .text
       L.D   F0,x(R0)     ;F0=x
       L.D   F2,x(R0)     ;F2=y
       L.D   F4,s(R0)     ;F4=s
       DADDI R1,R0,2      ;n=2

Loop:  MTC1    R1,F11    ; convert R1...
       CVT.D.L F6,F11    ; to double precision
       MUL.D   F8,F6,F2
       ADD.D   F4,F4,F8
       MUL.D   F2,F0,F2
       DADDI   R1,R1,1
       SLTI    R2,R1,22
       BNEZ    R2,Loop
; Result in F8
       HALT

                



