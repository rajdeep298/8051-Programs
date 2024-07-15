;Arranging a series of Numbers in Asccending order
mov r6,#0ah
oLoop:mov r0,#20h
mov r1,#21h
mov r7,#09h
loop:mov a,@r0
	mov b,a
	subb a,@r1
	jnc exchange
	jmp then
	exchange:mov a,b
			mov r2,a
			mov a,@r1
			mov r3,a
			mov a,r2
			mov @r1,a
			mov a,r3
			mov @r0,a
			inc r0
			inc r1
	then:djnz r7,loop
djnz r6,oLoop
end