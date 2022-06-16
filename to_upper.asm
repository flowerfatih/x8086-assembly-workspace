; multi-segment executable file template.

data segment
    text db 'turkiye'
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
                   
    lea bx, text
    mov si, 0    
    mov cx, 7
    repeat:
    and [bx+si], 11011111b
    inc si
    loop repeat
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
