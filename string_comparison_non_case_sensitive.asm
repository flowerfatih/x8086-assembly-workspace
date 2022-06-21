
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

lea bx, text
mov si, 0
mov di, 0
mov cx, 6


repeat:
and [bx+si], 11011111b
and [input+di], 11011111b
inc di
inc si
loop repeat


mov si, 0
mov di, 0
mov cx, 6

start:
jcxz valid
mov al,[bx+si]
cmp al, [input+di]
je next;equal
jmp end

    
next:
inc si
inc di
dec cx
jmp start
    

valid:
mov [validate], 1
jmp end

end:


ret
text db 'flower'
input db 'fLoWer'
validate db 0


