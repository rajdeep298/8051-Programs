;Array Nibble Transfer
mov r0,#20h
mov r5,#0ah
loop: mov a,@r0
	swap a
	mov @r0,a
	inc r0
	djnz r5,loop
end