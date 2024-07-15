;Add of ten 8 bit numbers sum is 8 bit.
mov r0,#20h
mov r5,#0ah
loop:add a,@r0
	inc r0
	djnz r5,loop
end