;Design such ap series :10 15 20 25 30 35 40 45 50 55.
Series:mov r0,#20h
	mov a,#0ah
	mov @r0,a
	inc r1
	mov r7,#09h
	loop:add a,#05h
		inc r0
		mov @r0,a
		djnz r7,loop
end