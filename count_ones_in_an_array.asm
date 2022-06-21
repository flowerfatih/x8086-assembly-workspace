
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h  

lea bx, numbers
mov si, 0
mov cx, 8


start:
cmp [bx+si], 1
je equal
jne notEqual


equal:
inc si
inc one
loop start
jmp end


notEqual:
inc si
loop start
       
end:


ret
numbers db 0,0,1,1,1,0,0,0
one db 0




