
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
lea bx, ad
lea bp, tersAd

mov si, 3
mov di, 0
mov cx, 4

dongu:
mov ax, [bx+si]
mov [bp+di], ax
inc di
dec si
loop dongu


ret
ad db 'Mert'
tersAd db 4 dup(?)




