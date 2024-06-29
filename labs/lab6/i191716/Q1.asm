.model small
.386
.stack 100h
.data
    array   db 1,2,3,3
            db 4,2,3,4
            db 1,4,3,5 
            db 1,2,4,6
    
    count dw 0
    min   db 9 
    ; Colsize db 1 99
    ; Rowsize db 1
    ; Colsize db 1
.code         
    start:   
        mov ax ,@data 
        mov ds ,ax
        
        MOV bx, OFFSET array ;Point to start of array
        MOV si, 0            ;choose column
        
        mov cx, 16
        loop1:
            mov ah, 01h
            int 21h ;take input from user and store in aL
            sub al,48
        loop loop1
        
        mov dl, ' '
        mov ah, 02h
        int 21h

        mov dl, ' '
        mov ah, 02h
        int 21h

        mov cx, 4
        l1:
            mov count, cx    ;store outer loop
            mov cx, 4 ;for inner loop 
            mov min, 99
            l2:
                mov al, [bx+si]      
                add al, 48
                mov dl, al
                mov ah, 02h
                int 21h

                cmp  al,min
                jb less
                ;jl less
                l3: ; for moving back from less label

                inc si
            loop l2


            mov dl, 'm'
            mov ah, 02h
            int 21h
            
            mov dl, '='
            mov ah, 02h
            int 21h
            
            mov dl, min
            add dl,48
            mov ah, 02h
            int 21h


            mov dl, ' '
            mov ah, 02h
            int 21h

            add bx, 4 
            MOV si, 0 
            mov cx, count ;move back for outer loop
        loop l1
        jmp exit

        less:
            mov min, al
            jmp l3
        exit:
            mov ah,4ch
            int 21h
    end start
                        
                    