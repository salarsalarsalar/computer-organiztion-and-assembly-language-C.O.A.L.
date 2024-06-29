.model small
.stack 100h
.data   

Employee STRUCT ; structure
    ID dw ?
    name BYTE 50 DUP('$')
    salary dw ?
    House_number dw ?
    City BYTE 50 DUP('$')
    PinCode dw ?
Employee ends ; end here

emp Employee <0007,'Salar$',9,5,'Isb$',0007> 

.code
main:

	mov ax,@data
	mov ds,ax

	; access the ID and printing
	add emp.ID,48
	mov dx,emp.ID
	mov ah,02h
	int 21h


	mov dl,10 ; print new line
	mov ah,02h
	int 21h

	;print employee name
	lea dx,emp.name
	mov ah,09h
	int 21h

    ; new line
	mov dl,10 
	mov ah,02h
	int 21h

	
	add emp.salary,48 
	mov dx,emp.salary; salary 
	mov ah,02h
	int 21h

    ; new line
	mov dl,10 
	mov ah,02h
	int 21h

	
	add emp.House_number,48 
	mov dx,emp.House_number; house number 
	mov ah,02h
	int 21h

    ; new line
	mov dl,10 
	mov ah,02h
	int 21h

	
	lea dx,emp.City ; city
	mov ah,09h
	int 21h


    ; new line
	mov dl,10 
	mov ah,02h
	int 21h

	;print employee Pin Code
	add emp.PinCode,48
	mov dx,emp.PinCode
	mov ah,02h
	int 21h
    
mov ah,4ch
int 21h
end main