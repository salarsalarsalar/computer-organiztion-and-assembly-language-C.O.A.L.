.MODEL SMALL
.STACK 100H
.DATA  
count DW ?
.CODE
main proc

    MOV ah, 01h
    INT 21h
    SUB al,48  
    MOV ah,0  


    MOV cx,ax ;  
    MOV dl,10D
    MOV ah,02H
    INT 21H  


    L1: 
        MOV COUNT,CX      
        MOV DL,48D 
    L2:      
    
        MOV ah,02H
        int 21H
        inc dl
        LOOP L2  
    MOV dl,10D
    MOV ah,02H
    INT 21H

    
    MOV CX,COUNT
    LOOP L1

    mov ah,4ch
    int 21h
main endp
end main