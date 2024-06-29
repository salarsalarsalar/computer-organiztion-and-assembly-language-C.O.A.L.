.model small
.stack 100h
.data
base db ?
power db ?
result db 1
.code
main proc

    mov ax,@data
    mov ds,ax 

    mov ah, 01h
    int 21h
    sub al,48

    mov base, al
    mov bl, base
    mov ah, 01h
    int 21h
    sub al,48
    mov power, al


    mov cl,power
    mov ch,0
    L1:
        mov al, result
        mul bl
        mov ah,0
        mov result,al
    loop L1

    add al, 48
    mov dl,al
    mov ah, 02h
    int 21h

    mov ah,4ch
    int 21h 
main endp
end main
