
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 2
add al, 255
jc carry
jmp end

carry:
mov [c], 1
jmp end

end: 

ret
c db 0



