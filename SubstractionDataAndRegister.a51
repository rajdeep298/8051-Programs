;Substraction of two 8 bit numbers-one number EFH is in the accumulator and other number 45H in R0 register. 
;After substraction, result to be stored in R1 register

mov a,#0efh
mov r0,#45h
subb a,r0
mov r1,a
end