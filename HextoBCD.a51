mov R1,#20h	;r1<-20h
mov a,@R1	;a<-M//r1
mov b,#0ah	;b<-oah
div ab		;a<-a/b b<-a%b
mov R5,b	;r5<-b
mov b,#0ah  ;b<-oah
div ab		;a<-a/b b<-a%b
mov R1,#30h	;r1<-30h
mov @R1,a	;M//r1<-a
mov a,b		;a<-b
swap a		;swap the nibbles of a
add a,R5	;a<-a+r5
inc R1		;r1++
mov @R1,a
end