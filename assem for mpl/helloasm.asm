section .bss
    ;variables

section .data
    hello: db "hello world", 11 ; string to print
    hellolen: equ $-hello ; lenght of string

section .text
    global _start

    _start:
        mov rax,1
        mov rdi,1
        mov rsi,hello
        mov rdx,hellolen
        syscall

        ;end program
        mov rax,60
        mov rdi,0
        syscall ;call kernel