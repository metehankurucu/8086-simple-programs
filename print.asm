; prints any text to console
org 100h         
   
   lea di, text
   mov si, point - offset text
   call print
   


print proc
   ;di text address
   ;si text length, used for loop
   
   printLoop:
   
   cmp si,0
   je finish
   
   ;print current char
   mov ah,0Ah
   mov al,[di]
   mov bh,0 
   mov cx,1
   inc di
   int 10h
   ;read cursor
   mov ah,03h
   int 10h
   ;inc cursor
   mov ah,02h
   inc dl
   int 10h
   
   dec si
   
   
   loop printLoop
                         

   finish:
   
ret
text db "text to print you want"
point db 0



