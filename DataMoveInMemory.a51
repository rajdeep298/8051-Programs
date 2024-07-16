;Move one selection of Data in internal memory to another section in internal memory
mov r0,#20h
mov a,@r0
mov r1,#30h
mov @r1,a
end
