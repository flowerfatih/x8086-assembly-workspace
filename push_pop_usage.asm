; multi-segment executable file template.

data segment
    low db 2 dup(?)
    high db 2 dup(?)
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

    push 2244h
    push 3366h
    
    pop ax
    mov low[0], al
    mov high[0], ah
    
    pop ax
    mov low[1], al
    mov high[1], ah
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
