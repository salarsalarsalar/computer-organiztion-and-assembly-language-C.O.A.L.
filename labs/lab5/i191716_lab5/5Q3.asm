.model small
.stack 100h
.data
    mybuf db 127 DUP("$")
    
    ; name1 db “Enter name ", ‘$’
    ; gender1 db “Enter gender ", ‘$’
    ; age1 db “Enter age ", ‘$’
.code
main proc
    mov ax,@data
    mov ds, ax

; ;----- display output( enter name)
;     mov ah,09
;     mov dx, offset name1
;     int 21h
;----- display input
    mov dx, OFFSET mybuf
    mov ah, 3Fh
    int 21h
;----- display output
    mov ah,09
    mov dx, offset mybuf
    int 21h


; ;----- display output( enter age)
;     mov ah,09
;     mov dx, offset age1
;     int 21h
;----- display input
    mov dx, OFFSET mybuf
    mov ah, 3Fh
    int 21h
;----- display output
    mov ah,09
    mov dx, offset mybuf
    int 21h


; ;----- display output( enter gender)
;     mov ah,09
;     mov dx, offset gender1
;     int 21h


;----- display input
    mov dx, OFFSET mybuf
    mov ah, 3Fh
    int 21h
;----- display output
    mov ah,09
    mov dx, offset mybuf
    int 21h

.exit
Main endp
End main
;     mov dl, 'E'
;     mov ah, 02h
;     int 21h

;     mov dl, 'n'
;     mov ah, 02h
;     int 21h

;     mov dl, 't'
;     mov ah, 02h
;     int 21h

;     mov dl, 'e'
;     mov ah, 02h
;     int 21h

;     mov dl, 'r'
;     mov ah, 02h
;     int 21h
;     mov ah, 01h
;     int 21h
;     sub al,32
    
;     mov dl, ' '
;     mov ah, 02h
;     int 21h

;     mov dl, 'N'
;     mov ah, 02h
;     int 21h

;     mov dl, 'a'
;     mov ah, 02h
;     int 21h
    
;     mov dl, 'm'
;     mov ah, 02h
;     int 21h

;     mov dl, 'e' 
;     mov ah, 02h
;     int 21h

;     mov dl, ':'
;     mov ah, 02h
;     int 21h

;     mov ah, 01h
;     int 21h
;     sub al,32

; ; new line 
;     MOV dl, 10
;     MOV ah, 02h
;     INT 21h
;     MOV dl, 13
;     MOV ah, 02h
;     INT 21h
; ;-------

;     ; S
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; A
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; L
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; A
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; R
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; " "
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; A
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; H
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; M
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; E
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; D
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al

;     mov dl, 'E'
;     mov ah, 02h
;     int 21h

;     mov dl, 'n'
;     mov ah, 02h
;     int 21h

;     mov dl, 't'
;     mov ah, 02h
;     int 21h

;     mov dl, 'e'
;     mov ah, 02h
;     int 21h

;     mov dl, 'r'
;     mov ah, 02h
;     int 21h
;     mov ah, 01h
;     int 21h
;     sub al,32
    
;     mov dl, ' '
;     mov ah, 02h
;     int 21h

;     mov dl, 'A'
;     mov ah, 02h
;     int 21h

;     mov dl, 'g'
;     mov ah, 02h
;     int 21h
    
;     mov dl, 'e'
;     mov ah, 02h
;     int 21h

;     mov dl, ':'
;     mov ah, 02h
;     int 21h

; ; new line 
;     MOV dl, 10
;     MOV ah, 02h
;     INT 21h
;     MOV dl, 13
;     MOV ah, 02h
;     INT 21h
; ;-------

;     ; 0
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al

;     ; 00
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; 000
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al

; ; new line 
;     MOV dl, 10
;     MOV ah, 02h
;     INT 21h
;     MOV dl, 13
;     MOV ah, 02h
;     INT 21h
; ;-------

;     mov dl, 'E'
;     mov ah, 02h
;     int 21h

;     mov dl, 'n'
;     mov ah, 02h
;     int 21h

;     mov dl, 't'
;     mov ah, 02h
;     int 21h

;     mov dl, 'e'
;     mov ah, 02h
;     int 21h

;     mov dl, 'r'
;     mov ah, 02h
;     int 21h
;     mov ah, 01h
;     int 21h
;     sub al,32

;     mov dl, ' '
;     mov ah, 02h
;     int 21h

;     mov dl, 'G'
;     mov ah, 02h
;     int 21h

;     mov dl, 'e'
;     mov ah, 02h
;     int 21h

;     mov dl, 'n'
;     mov ah, 02h
;     int 21h

;     mov dl, 'd' 
;     mov ah, 02h
;     int 21h

;     mov dl, 'e' 
;     mov ah, 02h
;     int 21h

;     mov dl, 'r' 
;     mov ah, 02h
;     int 21h

;     mov dl, ':'
;     mov ah, 02h
;     int 21h

; ; new line 
;     MOV dl, 10
;     MOV ah, 02h
;     INT 21h
;     MOV dl, 13
;     MOV ah, 02h
;     INT 21h
; ;-------
;     ; M
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; A
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; L
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al
;     ; E
;     mov ah, 01h
;     int 21h
;     sub al,32
;     mov dl,al


end main