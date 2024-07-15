;Add of two 16 bit numbers sum is 16 bit (abcdh,ffeh)
mov r0,#20h
mov r1,#30h
mov a,@r0
add a,@r1
mov @r1,a
inc r1
inc r0
mov a,@r0
addc a,@r1
mov @r1,a
inc r1
mov a,#00h
addc a,#00h
mov @r1,a
end