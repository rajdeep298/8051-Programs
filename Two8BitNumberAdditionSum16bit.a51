;Add of two 8 bit numbers sum is 16 bit.
mov r0,#20h
mov r1,#30h
mov a,@r0
inc r0
add a,@r0
mov @r1,a
inc r1
mov a,#00h
addc a,#00h
mov @r1,a
end 