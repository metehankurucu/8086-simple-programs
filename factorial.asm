;calculates factorial with given number 
;works numbers 1 to 8

;multi-segment executable file template.
data segment


ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax
     
    ; get input
    mov ah,01h
    int 21h
    
    ;change ascii to number
    mov ah,0
    sub ax,30h
    ; set func parameter ax      
    mov di,ax
    call factorial
    
    mov bx,ax
    ;check bx for result
    
        
    ; wait for any key    
    mov ah, 1
    int 21h      

    mov ax, 4c00h ; exit to operating system.
    int 21h    
ends


proc factorial
    mov ax,1
    
    mulLoop:

        cmp di,1
        je finish
              
        mul di
        
        dec di
        loop mulLoop
           
    finish: ret
    
endp factorial    

end start ; set entry point and stop the assembler.
