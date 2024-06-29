.model small
.stack 100h
.data 
    arrayB db 0,1,2,3,4,5,6,7,8,9
.code
Main proc
mov ax,@data
mov ds, ax

mov si, OFFSET arrayB

mov cx, 10
L1:
    cmp si, 2
    inc si
    je L2
loop L1
L2:
    mov al, [si]
    add al, 2
    mov dl, al
    add dl, 48
    mov ah, 02h
    int 21h
.exit
Main endp
End main