
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
        
mov cx, 8

next:
jcxz end  
shr [num], 1
jc found
dec cx
jmp next

found:
inc [one]
dec cx
jmp next

end: 



ret
num db 00111000b
one db 0

                


