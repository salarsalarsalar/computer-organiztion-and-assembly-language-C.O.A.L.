.model small
.stack 100H
.data
str1 db 'hello$'
str2 db 'HELLO$'
equal db 'they are equal$'
notequal db 'they arent equal$'

char db ?,'$'
.code
print MACRO name
    lea dx, name
    mov ax,09h
    int 21h    
ENDM
tolower MACRO message
    mov cx, 06h ; for 9 characters
    mov si, offset message
    BACK: 
        mov al, [si] 
        cmp al, 41h ; compares if al = 41
        jb AHEAD ; jump below ie if al < 40 cmp al, 5A ja AHEAD ; jump above ie if al > 5A
        XOR al, 00100000B ; in binary or in hex 20h
        mov [si], al
        AHEAD: 
            inc si
    loop BACK
ENDM

main proc
    mov ax,@data
    mov ds,ax
    
    mov bx, offset str1
    
    tolower str2
    mov ax, offset str2

    cmp ax, bx 
    je yes
    jmp exit
yes:
    print equal
exit:
    print notequal
mov ah,4ch
int 21h
main endp
end main


