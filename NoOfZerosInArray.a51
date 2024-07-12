;ALP to calculate null/zeros in an array.
mov r0,#20h				;r0<-20h
mov r1,#40h				;r1<-30h
mov r2,#0ah				;r2<-0ah
mov r5,#00h				;r5<-00h
loop:mov a,@r0			;a<-m((r0))
	cjne a,#00h,next	;if a!=0 jump to next
	inc r5				;r5++
	next:inc r0
		djnz r2,loop	;r2-- is not zero then go to loop
mov a,r5				;a<-r5
mov @r1,a				;m((r1))<-a
end