;Swap 4 MSBs with 4 LSBs in Accumulator and store in 9100H memory location.

mov a,#0f0h
swap a
mov dptr,#9100h
movx @dptr,a
end