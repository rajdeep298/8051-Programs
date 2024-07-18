;LCM of two numbers 12 and 30
mov r0,#12d
mov r1,#30d
mov a,r1
mov r7,a
loop:inc r7
	mov a,r0
	mov b,a
	mov a,r7
	div ab
	mov a,b
	cjne a,#00h,next
	mov a,r1
	mov b,a
	mov a,r7
	div ab
	mov a,b
	cjne a,#00h,next
	jmp result
	next:jmp loop
result:NOP
end