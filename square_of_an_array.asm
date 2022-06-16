; multi-segment executable file template.

data segment
    numbers db 2,4,5,3
    square db  4 dup(?)
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

    lea bx, numbers
    mov si, 0
    
    mov cx, 4
    repeat:
    mov al, [bx+si]
    mul al
    mov square[si], al
    inc si
    
    loop repeat
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
