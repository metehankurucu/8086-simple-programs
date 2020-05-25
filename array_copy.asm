;simple array copy with com template

org 100h

lea bx, arr1
lea bp, arr2

mov si, 0
mov cx, 5

copy:
    mov al, [bx+si]
    mov [bp+si], al   
    inc si

loop copy

ret
arr1 db 1,2,3,4,5
arr2 db 5 dup(?)  

end




