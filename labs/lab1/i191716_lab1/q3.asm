.MODEL SMALL
.STACK 100H
.DATA
.CODE
main proc

mov ah, 01h
int 21h

sub al,32
mov dl,al

mov ah,02
int 21h


mov ah,4ch
int 21h
main endp
end main
