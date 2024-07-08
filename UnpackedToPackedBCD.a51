mov r1,#30h	;r1<-30h msb
mov a,@r1	;a<-M//r1
swap a		;swap nibbles of a		
inc r1		;r1++
add a,@r1	;a+<-M//r1 lsb
mov r1,#20h	;r1<-20h
mov @r1,a	;M//r1<-a
end