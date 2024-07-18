;Two’s complement of an 8 bit Number and store result in 9000H memory location.
mov a,#0f0h
cpl a
inc a
mov dptr,#9000h
movx @dptr,a
end