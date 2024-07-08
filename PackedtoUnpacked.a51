mov r1,#20h	; r<-20h
mov a,@r1	;a<-M//r1
mov b,a		;b<-a
anl a,#0f0h	;a<-a^f0h
swap a		;swap nibbles of a
mov r1,#30h	;r1<-30h
mov @r1,a	;M//r1<-a
inc r1		;r1++
mov a,b		;a<-b
anl a,#0fh	;a<-a^0fh
mov @r1,a	;M//r1<-a
end