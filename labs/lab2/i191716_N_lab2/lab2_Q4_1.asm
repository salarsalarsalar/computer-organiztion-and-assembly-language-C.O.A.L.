.MODEL SMALL
.STACK 100H
.DATA
.CODE
main proc
;------------------------------

; take input var1
mov ah, 01h
int 21h ;take input from user and store in aL

sub al,48

mov bl, 5; storing 5 in bl
;(var1*5)

mul bl ; al multiply bl, first input stored al and 5 sotred in bl

add al,48; adding 48 for actual value


mov cl, al; moving to of expression (var1*5) in cl


;take input var2
mov ah, 01h
int 21h  ;take input from user and store in aL

sub al,48;substracting for actual value


mov bl,al;

;solving (var2-3) expression
sub bl,3

add bl,48; adding 48 for actual value

mov al,cl; moving solution of expression (var1*5) into al

mov ah,0; clearing garbage

div bl ; dividing al(var1*5) with bl(var2-3)

add al,48; for actual value


mov dl,al; displaying output

mov ah, 02h
int 21h



;-----------------------------
mov ah,4ch
int 21h
main endp
end main