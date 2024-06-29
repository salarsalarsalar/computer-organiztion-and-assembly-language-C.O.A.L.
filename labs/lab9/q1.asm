.model small
.stack 100h
.data
    number dw 0      ; To hold all entered numbers
    temp1  dw 0      ; used in input label to hold current digit
    temp2  dw 0      ; used in input label to hold current digit
.code
mymacro macro n,t1,t2
    input1: ; label 2
        mov ah,01h
        int 21h
        cmp al,13 ;Stop taking input1 if user presses Enter key
        je exit ; if zero flag ==1, go to Exit
        sub al,48
        mov ah,0
        mov t1, ax  

        mov ah,01h
        int 21h
        cmp al,13 ;Stop taking input2 if user presses Enter key
        je exit   ;if zero flag ==1, go to Exit
        sub al,48
        mov ah,0
        mov t2, ax   
        
        mov ax,n; number =0
        mov bx,10
        mul bx
        add ax,t1

        add ax,t2 ;adding number

        ;  1111 <-- temp2
        ;  1111 <-- temp1
        ;+ 0000 <-- ax
        ;----------------
        ;  2222 <-- ax   

        mov n,ax
        mov dx,ax
    jmp input1;  

    exit:
endm
main proc
    mov ax,@data
    mov ds,ax 

    mymacro number,temp1,temp2
    mov ah,4ch
    int 21h
main endp
end