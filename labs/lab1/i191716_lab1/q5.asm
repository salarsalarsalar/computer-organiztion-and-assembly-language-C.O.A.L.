.MODEL SMALL
.STACK 100H
.DATA
.CODE
main proc



mov ah,01h
int 21h
mov bl,al

mov ah,01h
int 21h
mov cl,al

sub bl,cl
mov dl,bl
add dl,48
mov ah,02h
int 21h

mov ah,4ch
int 21h
main endp
end main
