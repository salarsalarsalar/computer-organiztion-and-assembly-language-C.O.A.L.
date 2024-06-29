.model small
.stack 100h
.data
arr db 9 dup ('$')
.code
start:
    mov ax,@data
    mov ds,ax

    mov bl,0
    mov si,offset arr
    l1:
        mov ah,01
        int 21H
        cmp al, 9
        je la1
        mov [si],al
        inc si
        jmp l1

        la1:
        mov cl,bl
        la2:
            dec si
            mov dx,[si]
            mov ah,02
            int 21H
        loop la2

        
        inc bl
        mov ah,4ch
        int 21H
end start
