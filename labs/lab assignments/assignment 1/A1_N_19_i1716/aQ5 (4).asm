.model small
.stack 100h
.data
; int a , b , c , d, e , f , g ;
    a db ?
    b db ?
    c db ?
    d db ?
    e db ?
    f db ?
    g db ?
.code
start:
mov ax,@data 
mov ds,ax 
; int a , b , c , d, e , f , g ;
; cin >> a >> b >>c>>d>>e>>f>>g; 
;     if((g==f || e!=d) && (g==d || f<=e))
;     { 
;         if(a>g && b <=e )
;         {
;             if( c>a && e >= c)
;             { 
;             cout<<a;
;             }
;         }
;     }
; return 0;

; cin >> a >> b >>c>>d>>e>>f>>g;
    ; take input a
    mov ah, 01h
    int 21h 
    sub al,48
    
    mov a, al

    ; take input b
    mov ah, 01h
    int 21h 
    sub al,48
    
    mov b, al

    ; take input c
    mov ah, 01h
    int 21h 
    sub al,48
    
    mov c, al

    ; take input d
    mov ah, 01h
    int 21h 
    sub al,48
    
    mov d, al

    ; take input e
    mov ah, 01h
    int 21h 
    sub al,48
    
    mov e, al

    ; take input f
    mov ah, 01h
    int 21h 
    sub al,48
    
    mov f, al

    ; take input g
    mov ah, 01h
    int 21h 
    sub al,48
    
    mov g, al



; ((g==f || e!=d) && (g==d || f<=e))

    mov al, g
    cmp al, f
    je L1

    mov al, e
    cmp al, d
    jne L1

    jmp exit

    L1:
        mov al, g
        cmp al, d
        je L2
        jmp exit

        mov al, f 
        cmp al, e
        jg L2
        ja L2
        jmp exit

        L2:
            ;if(a>g && b<=e)
            ; a>g
            mov al, a
            cmp al, g
            jg L3
            ja L3
            jmp exit
            
            L3:
                ;b<=e
                mov al, b
                cmp al, e
                jge L4
                jae L4
                jmp exit
                L4:
                    ; (c>a && e >= c)
                    ; c>a
                    mov al, c
                    cmp al, a
                    jg L5
                    ja L5
                    jmp exit
                    
                    L5:
                        ;e >= c
                        mov al, e 
                        cmp al, c
                        jae L6
                        jge L6
                        jmp exit
                        L6:
                            ; if( c>a && e >= c)
                            ; { 
                            ;   cout<<a;
                            ; }

                            ; c>a
                            mov al, c
                            cmp al, c
                            jae L7
                            jge L7
                            jmp exit
                            L7:
                                ; cout << a;
                                mov al, a
                                mov dl, al
                                add dl, 48
                                mov ah, 02
                                int 21h

              
    exit:

end start




      