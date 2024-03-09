;Printing hello world!

section .data
    msg db "Hello world!" , 0xa
    len equ $- msg
    
section .text
    global _start:
    
_start:
    mov eax , 0x4
    mov ebx , 0x1
    mov ecx , msg
    mov edx , len
    int 0x80
    
    mov eax , 0x1
    xor ebx , ebx
    int 0x80
