.model small, stdcall
.stack 100h
.386
.data

file db 'Grade.txt',0

str db "Grade = D $" 
handle dw ?
buf db 500 DUP('$')

.code   
main proc
    mov ax,@data
    mov ds,ax

    lea dx,file
    mov ah,3dh
    mov al,02h                         
    int 21h

    jnc err
    jc found
err:
	mov dl,'E' 
	mov ah,02h
	int 21h

    mov ah,3eh
    int 21h
    jmp l1

found:
	mov dl,'F'
	mov ah,02h
	int 21h

    mov ah,3eh
    int 21h
    jmp l1

l1: 

	lea dx, file              
	mov al, 02h                  
	mov ah, 3dh                
	int 21h

	mov bx, ax                  
	lea dx, str              
	mov ah, 40h                 
	int 21h
	
	lea dx, file            
	mov al, 00h               
	mov ah, 3Dh              
	int 21h
	mov handle, ax
	
	mov bx, handle            
	lea dx, buf              
	mov ah, 3Fh               
	int 21h
	
	
	lea dx, buf
	mov ah, 09h
	int 21h
		
	mov ah, 3Eh
	mov bx, handle
	int 21h

    mov ah,4ch
    int 21h
main endp
end