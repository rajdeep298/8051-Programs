;Program to find frequency of a number in a list
mov R0,#20h				;memory elements are stored from 20h location
mov R1,#00h				;initialize the counter
mov R2,#0Ah				;R2=0Ah store the number of elements in list
loop:mov a,@R0			;a<-((r1))
cjne a,#0Ah,next		;compare a with 0Ah if not equal jump to next
inc R1					;if a==0Ah then R1++
mov A,#0FFh				;a<-0ffh
mov	@R0,a				;M((R1))=#FFh
next:inc R0				;R1++
djnz R2,Loop			;if R2!=0 loop back
end
	
;Memory Content Before
;01 oa 05 09 02 04 0a 06 0a 0b

;Memory Content After
;01 ff 05 09 02 04 ff 06 ff 0b
;r1=3
