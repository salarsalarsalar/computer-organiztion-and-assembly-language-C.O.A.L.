.model small
.stack 100h
.data
    guess db ?
    input db ?
.code
mov ax ,@data 
mov ds ,ax 

;--------------------
; input to guess                                    
mov ah, 07h                                 
int 21h                                 
sub al,48                                 
                               
mov guess, al                                 
;--------------------
; second input
mov ah, 01h
int 21h
sub al,48

mov input, al 
;--------------------


mov al, guess
cmp al, input
je  W  ; success attempt
jne FL ; 1st attempt wrong, 1 left

W:
    ;print W
    mov dl,'W'
    mov ah, 02h
    int 21h
FL:
    ; 2nd attempt
    mov ah, 01h
    int 21h
    sub al,48

    mov input, al
    je  F ; success attempt
    jne L ; 2nd attempt wrong, 0 left
    F:
        ;print F
        mov dl,'F'
        mov ah, 02h
        int 21h
    L:
        ;print L
        mov dl,'L'
        mov ah, 02h
        int 21h
 
