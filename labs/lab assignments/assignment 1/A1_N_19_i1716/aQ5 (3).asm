.model small
.stack 100h
.data
    var1 db ?,?,?,?
    result db 0,0,0,0
.code
mov ax ,@data 
mov ds ,ax 

mov cx, SIZEOF var1
mov dx, OFFSET var1
mov ah, 3Fh
int 21h

input:
    mov dx, OFFSET var1[si]
    mov ah, 3Fh
    int 21h
    inc si
loop input

mov cx, SIZEOF var1

multiply:
    mov al, var1
    mov bl, 1
    mul bl
    add result, al

    mov al, var1    
    mov bl, 2
    mul bl
    add result, al

    mov al, var1
    mov bl, 3
    mul bl
    add result, al

    mov al, var1
    mov bl, 4
    mul bl
    add result, al
loop multiply


mov al, var1
cmp al, var2
cmp al, var3
jg L1
jmp exit

mov al, var2
cmp al, var1
cmp al, var3
jg L2
jmp exit

mov al, var3
cmp al, var1
cmp al, var2
jg L3
jmp exit


L1:
    
L2:
    
L3:
    

end