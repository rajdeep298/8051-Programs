;Addition of ten 8 bit Nos. in the External RAM location starting from 8000H.
;Sum is sixteen bit result is stored in memory locations 8100H and 8101H.

mov dptr,#8000h
mov r0,#09h
mov r7,#00h
movx a,@dptr
clr c
inc dptr

loop:mov b,a
	movx a,@dptr
	addc a,b
	jnc next
	clr c
	inc r7
	inc dptr
next:djnz r0,loop

mov dptr,#8100h
movx @dptr,a
inc dptr
mov a,r7
movx @dptr,a
end