; multi-segment executable file template.

data segment
    ; add your data here!
    index db 2,0,1
    numbers db 4h, 8h, 0ch
    target db 3 dup(?)
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
                      
    mov cx, 3
    lea bx, numbers
    mov si, 0
    repeat:
    mov al, index+si
    xlatb
    mov target+si, al
    inc si
    loop repeat
    
    
    
    
    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends

end start ; set entry point and stop the assembler.
