;Program to check if a number is palindrome or not
mov r0,#20h			;r<-20h
mov a,@r0			;a<-m((r1))
mov	r5,a			;r5<-a
anl a,#0f0h			;a<-a&f0
swap a				;swap nibbles of a
mov b,a				;b<-a
mov a,r5			;a<-r5
anl a,#0fh			;a<-a&0f
cjne a,b,not_eq 	;compare a and b if they are not equal jump to not_eq
mov a,#01h			;if equal store 01
mov @r0,a
jmp exit
not_eq:mov a,#00h	;if equal store 00
		mov @r0,a
exit:nop
end