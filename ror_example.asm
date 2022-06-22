
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h


lea bx, decimals
mov si, 0
mov cx, 8
mov dl, [num]
           
           
repeat:
ror dl,1
mov al, dl
mov [bx+si], al
inc si
loop repeat


ret
num db 0111011b
decimals db 8 dup(0)



