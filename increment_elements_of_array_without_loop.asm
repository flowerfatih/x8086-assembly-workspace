
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

lea bx, numbers
mov si, 0
mov cx, 4

repeat:
inc [bx+si]
inc si
dec cx
jcxz stop
jmp repeat
          
stop:

ret
numbers db 2,5,4,6



