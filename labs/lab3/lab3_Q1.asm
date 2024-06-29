;  roll number 19i-1716
; (var1 * var2) + (var3 / var4)

.MODEL SMALL
.STACK 100H
.DATA
.CODE
main proc
;------------------------------



mov ah, 01h
int 21h ;take input from user and store in aL
sub al,48

mov bl, al

mov ah, 01h
int 21h ;take input from user and store in aL
sub al,48

cmp bl, al
jbe L1
jmp exit
L1:
    mov ah, 01h
    int 21h ;take input from user and store in aL
    sub al,48

    mov bl, al
    
    mov ah, 01h
    int 21h ;take input from user and store in aL
    sub al,48

    cmp bl, al

    ja L2
    jmp exit
L2:
    mov dl, 5
    add dl, 48
    mov ah, 02
    int 21h
    mov dl, 6
    add dl, 48
    mov ah, 02
    int 21h


;-----------------------------
exit:
    mov ah,4ch
    int 21h
    main endp
    end main