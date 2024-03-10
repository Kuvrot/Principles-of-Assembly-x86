section .data
    n1 db '6'
    n2 db '3'
    newline db 0xa

section .bss
    sum resb 1 
    res resb 1
    
section .text
    global _start:
    
_start:
    mov eax , [n1]
    mov ebx , [n2]
    sub eax , '0'
    sub ebx , '0'
    add eax , ebx
    add eax , '0'
    mov [sum] , eax
    mov eax , [n1]
    sub eax , '0'
    sub eax , ebx
    add eax , '0'
    mov [res] , eax
    
    ;printing the addition
    
    mov eax , 0x4
    mov ebx , 0x1
    mov ecx , sum
    mov edx , 0x1
    int 0x80
    
    ;printing a new line
    mov eax , 0x4
    mov ebx , 0x1
    mov ecx , newline
    mov edx , 0x1
    int 0x80
    
    ;printing the substraction result
    mov eax , 0x4
    mov ebx , 0x1
    mov ecx , res
    mov edx , 0x1
    int 0x80

    ;Exit the program

    mov eax , 0x1
    xor ebx , ebx
    int 0x80
