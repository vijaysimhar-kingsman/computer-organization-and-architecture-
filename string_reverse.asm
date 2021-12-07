include 'emu8086.inc'


lea si , str 
lea di , str
l1:
mov al ,[si]
;mov s3 , al
cmp al ,"$"
je reverse
inc si
jmp l1

reverse:
dec si
jmp reverse1

reverse1:
; now currently si is pointing to the  $ which is the last character of the string
    
    mov al,[si] 
    cmp si , di
    je esc
    mov dl,al
    mov ah , 2
    int 21h  
    dec si
    jmp reverse1 

esc: 
    
    mov dl,al
    mov ah , 2
    int 21h  
 ret


              
str db "hello kingsman$"
s3 db ?
  

define_print_num
define_print_num_uns