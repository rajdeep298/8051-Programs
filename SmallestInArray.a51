;Find the smallest among 
mov r0,#20h
mov r5,#09h
mov a,@r0
inc r0
loop:mov b,a
	subb a,@r0
	jnc next
	mov a,b
	jmp then
	next:clr c
		mov a,@r0
		then:inc r0
	djnz r5,loop