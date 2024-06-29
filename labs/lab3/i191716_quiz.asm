;  roll number 19i-1716
; (var1 * var2) + (var3 / var4)

.MODEL SMALL
.STACK 100H
.DATA
 var1 db ?
 var2 db ?
.CODE
main proc
;------------------------------

mov ax, @data
mov ds, ax
; take input  (var1 * var2)

mov ah, 01h
int 21h ;take input from user and store in aL
sub al,48

mov bl, al

mov ah, 01h
int 21h ;take input from user and store in aL
sub al,48

mul bl ; (var1* var2) stored

mov var1, bl


mov ah, 01h
int 21h ;take input from user and store in aL
sub al,48

mov bl, al

mov ah, 01h
int 21h ;take input from user and store in aL
sub al,48
mov ah, 0

mul bl ; (var3/ var4) stored

mov al, var1 ; 

add al ,bl ; result stored in var1
add al, 48

mov dl, al ; displaying result2
mov ah, 02h
int 21h

;-----------------------------
mov ah,4ch
int 21h
main endp
end main