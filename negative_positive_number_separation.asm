
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h



lea bx, numbers
mov si, 0
mov di, 0
mov bp, 0
mov cx, 4

start:
jcxz end ;cx=0
cmp [bx+si], 0
jl ngtv;operand1<operand2
jg pstv
jmp zero

zero:
inc si
dec cx
jmp start

ngtv:
mov al, [bx+si]
mov [negative+di], al
inc di
inc si
dec cx
jmp start
         
pstv:
mov al, [bx+si]
mov [positive+bp], al
inc bp
inc si
dec cx
jmp start


end:



ret
numbers db -2,1,-1,4
negative db 4 dup(0)
positive db 4 dup(0)




