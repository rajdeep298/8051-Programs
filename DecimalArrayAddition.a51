;Sum of ten value in decimal
mov r0,#20h
mov r7,#0ah
mov a,#00h
mov r5,#00h
clr c
loop:addc a,@r0
	da a
	jnc next
	inc r5
	next:inc r0
	djnz r7,loop
end