;Find prime numbers from a list that are divisable by 5
mov r0,#20h
mov r1,#30h
mov r7,#0ah
loop:mov b,#05h
	mov a,@r0
	mov r3,a
	div ab
	mov a,b
	jz divisable
	jmp then
	divisable:mov a,r3
		mov @r1,a
		inc r1
	then:inc r0
	djnz r7,loop
end