
.model small
.stack 100h
.data
.code
function MACRO p1,p2 
    mov bx,p1
    cmp bx,p2
    jge Lp1
    jmp Lp2
    jmp exit

    Lp1:
        mov ax,bx
        add ax,48

        mov dx,ax
        mov ah,02h
        int 21h

        mov ah,4ch
        int 21h
    
    jmp f_end

    Lp2:
        mov bx,p2
        add bx,48
        mov dx,bx
        mov ah,02h
        int 21h

    jmp f_end
    exit:
        mov dx, 'X'
        mov ah,02h
        int 21h
    f_end:
        
endm

main:
    mov ax,@data
    mov ds,ax

    function 2,7
    
    mov ah,4ch
    int 21h
end main