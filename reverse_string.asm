;string reverse
;com template

org 100h

lea bx, string
lea bp, reverse_string

mov si, 13
mov di, 0
mov cx, 14

reverse:
    mov al, [bx+si]
    mov [bp+di], al   
    inc di
    dec si

loop reverse

ret
string db 'example-string'   
reverse_string db 14 dup(?)

end




