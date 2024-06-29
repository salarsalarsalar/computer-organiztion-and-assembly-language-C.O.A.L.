.386
.model small
.stack 100h

.data
intArray DWORD	10h,20h,30h,40h,;
                10h,20h,30h,40h,;
                10h,20h,30h,40h;

.code
start:
    mov ax,@data
    mov ds,ax

    arr_sum proc
    
        push ebx
        push eax
        push ecx

        mov ebx, OFFSET intArray
        
        mov ecx, 4
        mov eax, 0
        LP:
            add eax,[ebx]
            mov ah,02
            int 21h
            add ebx,TYPE intArray
        loop LP
        
        mov edx, eax
        add edx,32

        mov ecx, 4
        mov eax, 0
        LP1:
            add eax,[ebx]
            mov edx, eax
            int 21h
            add ebx,TYPE intArray
        loop LP1

        add edx,32
        mov ah,02


        mov ecx, 4
        mov eax, 0
        LP2:
            add eax,[ebx]
            mov edx, eax
            int 21h
            add ebx,TYPE intArray
        loop LP2

        add edx,32
        mov ah,02

    pop ecx
    pop eax
    pop ebx

    end arr_sum
    mov ah, 4ch
    int 21h
end start