.model small
.386
.stack 100h
.data 
    array DB 8 DUP(?)
    var_add DB ?
    var_mul DB ?
    var_sub DB ?
    var_div DB ?
.code
start:
    mov ax, @data
    mov ds, ax

    mov si, OFFSET array
    mov cx, SIZEOF array

    input:
        mov ah, 01h
        int 21h 
        sub al,48

        mov array[si], al
        inc si
    loop input

    mov si, OFFSET array
    mov cx, SIZEOF array
    ;-----------------------------------------------------------------------------
    Operations: 
        ; a =
        ; {
        ;     0001, 0002,    si+0 --> 0 :4 
        ;     0003, 0004,    si+2 --> 5 :8
        ;     0005, 0006,    si+4 --> 9 :12
        ;     0007, 0008,    si+6 --> 13:16
        ; }

        addition:
            ; si = 0 
            ; array[si+0] + array[si+1]    OR  array[si+0] + array[si+4]   
            mov al, array[si]
            mov bl, array[si+4]
            ;-----------------------
            add al, bx 
            mov var_add, al
            ;-----------------------
            inc si
        multiplication:
            ; si = 1
            ; array[si+2] * array[si+2+1]  OR  array[si+5] * array[si+5+4]  
            mov al, array[si]
            mov bl, array[si+4]
            ;-----------------------
            mul bl
            mov var_mul, al
            ;-----------------------
            inc si
        subtraction:
            ; si = 2
            ; array[si+4] - array[si+4+1]  OR  array[si+10] - array[si+10+4]      
            mov al, array[si]
            mov bl, array[si+4]
            ;-----------------------
            sub al, bl
            mov var_sub, al
            ;-----------------------
            inc si
        division
            ; si = 3
            ; a[si+6] / a[si+6+1]  OR  a[si+15] / a[si+6+4]  
            mov al, array[si]
            mov bl, array[si+4]
            ;-----------------------
            div bl
            mov var_div, al
            ;-----------------------
            inc si
    ;-----------------------------------------------------------------------------
    Descending_Sort:
        ; var_add
        ; var_sub
        ; var_mul
        ; var_div
        
        ;var_add
        ;-----------------------
        mov al, var_add
        
        cmp al, var_add
        cmp al, var_sub
        cmp al, var_mul
        cmp al, var_div

        jb L1
        jl L1
        ;-----------------------


        ;var_sub
        ;-----------------------
        mov al, var_sub

        cmp al, var_add
        cmp al, var_sub
        cmp al, var_mul
        cmp al, var_div
        
        jb L2 
        jl L2 
        ;----------------------
        
        ;var_mul
        ;-----------------------
        mov al, var_mul
        
        cmp al, var_add
        cmp al, var_sub
        cmp al, var_mul
        cmp al, var_div

        jb L3
        jl L3
        ;-----------------------

        ;var_div
        ;-----------------------
        mov al, var_div
        
        cmp al, var_add
        cmp al, var_sub
        cmp al, var_mul
        cmp al, var_div

        jb L4
        jl L4
        ;-----------------------
                


        
        ;var_add
        L1:
            add al,48
            mov dl,al
            mov ah,02h
            int 21h
            jmp exit:

    
        ;var_sub
        L2:
            add al,48
            mov dl,al
            mov ah,02h
            int 21h
            jmp exit:

    
        ;var_mul
        L3:
            add al,48
            mov dl,al
            mov ah,02h
            int 21h
            jmp exit:

    
        ;var_div
        L4:
            add al,48
            mov dl,al
            mov ah,02h
            int 21h
            jmp exit:
    ;-----------------------------------------------------------------------------
    
    exit:
        mov ah,4ch
        int 21h
        end start