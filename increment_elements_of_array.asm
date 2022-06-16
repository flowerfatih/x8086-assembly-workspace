; multi-segment executable file template.

data segment
    ; add your data here!
    numbers db 2,3,4,5
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
    mov cx, 4
    mov si, 0
    
    repeat:
    inc [bx+si]
    inc si
    loop repeat
 
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
