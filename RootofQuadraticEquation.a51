;finding the root of quadratic equation x^2-2x-4=0
;a=(+2+root(2^2-4.1(-4)))/2.4
;b=(+2-root(2^2-4.1(-4)))/2.4

mov a,#20d;r1<-2^2-4.1(-4)
mov r1,#01h
mov r2,#00h
loop:subb a,r1;a<-a-r1
	jc next;carry set ie neg,jump to next
	inc r2;r2++
	inc r1;r1++
	inc r1;r1++
	jnc loop
next:clr c
mov a,#2h;a<-2
subb a,r2
mov b,#08h;b<-08h
div ab ; a<-a/b b<-a%b
mov r0,#20h;r0<-20h
mov @r0,a; m((r1))<-a

clr c
mov a,#2h;a<-2
add a,r2
mov b,#08h;b<-08h
div ab
mov r0,#30h;r0<-30h
mov @r0,a; m((r1))<-a
end