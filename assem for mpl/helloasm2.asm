section .bss
    ;variables

section .data   ;data that is going to be renaming const
    hello: db "hello pratham",10
    hellolen : equ $-hello

    word : db "word",10
    wordlen : equ $-word

section .text
    global _start ;entry point for linker

    _start:
        mov rax,1 ;sys_write
        mov rdi,1 ;stdout
        mov rsi, hello ; stores the message to write
        mov rdx, hellolen ; message length
        syscall ;call kernel'

        mov rax,1
        mov rdi,1
        mov rsi , word
        mov rdx, wordlen
        syscall

        ;end program
        mov rax,60 ;sys_exit
        mov rdi,0 ;error code 0(sucess)
        syscall ;call kernel

