.model small
.stack 100h
.data

.code
main proc
mov cx,10
mov dl, 47
L1:
  inc dl
  mov ah, 02h
  int 21h 
  loop L1

mov ah, 4ch
int 21h

main endp
end main