.MODEL SMALL
.STACK 100H
.DATA
.CODE
main proc
;------------------------------



mov ah, 01h
int 21h;take input from user and store in AL

sub al,48

mov bl,al

mov ah, 01h
int 21h;take input from user and store in AL

sub al,48

mov ah,0 ;garbage value is stored in ah so we initialize with zero for ease of division

div bl

add al,48

mov dl,al ;moving to dl to show output

mov ah, 02h
int 21h


;-----------------------------
mov ah,4ch
int 21h
main endp
end main