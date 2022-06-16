; multi-segment executable file template.

data segment
    numbers db 14, 28, 18, 42
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

    ; add your code here
            
    lea bx, numbers
    mov si, 0
    mov cx, 4
    repeat:
    and [bx+si], 00001111b
    inc si
    loop repeat
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
