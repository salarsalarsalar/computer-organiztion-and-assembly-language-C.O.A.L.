.Model SMALL
.STACK 100H

.DATA
.CODE
start:
mov dl, 'S'
mov ah, 02h
int 21h


mov dl, 'A'
mov ah, 02h
int 21h

mov dl, 'L'
mov ah, 02h
int 21h

mov dl, 'R'
mov ah, 02h
int 21h

mov dl, 'A'
mov ah, 02h
int 21h

mov dl, 'H'
mov ah, 02h
int 21h

mov dl, 'M'
mov ah, 02h
int 21h

mov dl, 'E'
mov ah, 02h
int 21h

mov dl, 'D'
mov ah, 02h
INT 21h

mov ah,4ch
int 21h;return 0

end start