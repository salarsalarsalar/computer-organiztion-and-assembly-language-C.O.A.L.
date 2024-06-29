.Model SMALL
.STACK 100H

.DATA
.CODE
mov ah, 01h
int 21h
inc al
mov dl,al
mov ah,02 
int 21h

inc dl
mov ah,02 
int 21h

mov ah,4ch
int 21h
end