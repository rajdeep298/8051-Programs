;HCF of two numbers 12 and 30
mov r0,#12d
mov r1,#30d
mov a,r0
mov r7,a
mov r5,#00h
loop:mov a,r0
	mov b,r5
	div ab
	mov a,b
	cjne a,#00h,next
	mov a,r1
	mov b,r5
	div ab
	mov a,b
	cjne a,#00h,next
	mov a,r5
	mov	r4,a
	next:inc r5
	djnz r7,loop
end