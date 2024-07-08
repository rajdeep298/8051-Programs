;Formula for this is
;NNNN=timeDelay/1.085 microsec	NNNN=1ms/1.085 microsec=922
;MMMM=65536-NNNN				MMMM=65536-922=64614
;X1X2Y1Y2=MMMMh					X1X2Y1Y2=FC66h
;THX=X1X2						TH0=fch
;TLX=Y1Y1						TL0=66h

;Program to create 1ms time delay
mov TMOD,#01h		;select timer-0 mode-1
mov TH0,#0fCh		;TH0<-fCh
mov TL0,#66h		;TL0<-66h
setb TR0			;TR0<-1
loop:jnb TF0,loop	;Jump untill overflow happens
clr TR0
clr TF0
end
	
;Program to create 10ms time delay
mov TMOD,#01h		;select timer-0 mode-1
mov TH0,#0fCh		;TH0<-fCh
mov TL0,#66h		;TL0<-66h
setb TR0			;TR0<-1
loop:jnb TF0,loop	;Jump untill overflow happens
clr TR0
clr TF0
end