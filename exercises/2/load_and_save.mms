        LOC     Data_Segment
        GREG    @
A       BYTE    255
X       BYTE    0
B       OCTA    12345
SUM     OCTA    0

        LOC     #100
addr    IS      $0
a       IS      $1
au      IS      $2
b       IS      $3
x       IS      $4
sum     IS      $5
tmp     IS      $6
zero    IS      $7


Main    LDA     addr,A

// a)
        LDB     a,A

// b)
        LDBU    au,A
// c)
        LDO     b,B
// d)
        SET     x,42
// e)
        STB     x,X
// f)
        ADD     sum,a,b
// g)
        STO     sum,SUM
// h)
        // $1=255
        // $2=255
        // $3=12345
        // $4=42
        // $5=12400
// i) 255,42, 6x Padding-Byte | 12345 | 12400

// j) 2er Komplement
        
End     TRAP    0,Halt,0