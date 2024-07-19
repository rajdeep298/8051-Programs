;Find fibonnaci numbers upto 10 counts
mov r0,#20h
mov r6,#00h
mov a,r6
mov @r0,a
inc r0
mov r7,#01h
mov a,r7
mov @r0,a
inc r0
mov r5,#08h
loop:mov a,#00h
	clr c
	add a,r6
	add a,r7
	mov b,a
	mov @r0,a
	inc r0
	mov a,r7
	mov r6,a
	mov a,b
	mov r7,a
	djnz r5,loop
end