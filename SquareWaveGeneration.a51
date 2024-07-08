;50Hz squarewave generation using timer delay


;Procedure:
;Timeperiod in 8051=1.085 microsec
;Sqaure wave generation means we have to make one port pin high port predefined amount of time and then same amount of time in low state
;T50=1/(50 Hz)= 20ms
;So we have to keep 10ms high and 10ms low
;10ms/1.085 microsec=9216
;65536-9216=56320
;56320d=>dc00h
;TH0=dch,TL0=00h

clr P1.0			;set P1.0=0
mov TMOD,#01h		;set timer-0 mode-1
again:mov TH0,#0dch		;TH0=dch
mov TL0,#00h		;TL0=00h
setb TR0			;TR1=0 timer starts
loop:jnb TF0,loop	;continue while overflow doesnot happens
clr TR0				;clear TR0
cpl P1.0
clr TF0				;clear TF0
sjmp again			;make this process infinite