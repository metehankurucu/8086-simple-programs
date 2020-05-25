; proc random returns a random number from 0 to max you want (up to 100)
org 100h
         
      
mov di,50
call random


random proc
    ;di max (up to 100)

   
    mov ah,2Ch
    int 21h
    
    ;mov ax random int (0-100)     
    mov ah,0     
    mov al,dl

    
    mov dx,0
    div di        
    ;set random num mod max to ax
    mov ax,dx
  
    ret
    
random endp



ret




