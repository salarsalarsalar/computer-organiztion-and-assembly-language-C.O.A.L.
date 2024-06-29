.MODEL SMALL
.STACK 100H
.DATA
arr db ?,?,?,?,?,?,?,?,?,?
a dw 0


.CODE
start

mov ax, @data
mov ds, ax

mov bx, offset arr
mov cx, 9
L1:
    ;---------------
    mov ah, 01h
    int 21h
    sub al, 48
    ;---------------

    mov [bx], al
    inc bx
loop L1

;-------------------------------------------------
mov bx,offset arr
mov si,0
mov cx,3

x1:
    mov a,cx
    mov ax,0
    
    mov cx,3
    x2:
        add al, [bx+si]
        inc si
    loop x2

    ;---------------
    add al,48
    mov dl ,al
    mov ah,02h
    int 21h
    ;----------------


    mov cx, a
loop x1
;------------------------------

mov ah, 4ch
int 21h

end start