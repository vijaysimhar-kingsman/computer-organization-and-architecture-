include 'emu8086.inc'

lea si , str1
lea di , str2

mov cx,0
l1: 
    mov ah,1
    mov al,0
    int 21h
    
    
    cmp al , "$"
    je rev      
    inc cx
    
    mov [si] , al   
    inc si   
    jmp l1
    
rev:
    dec si
    l2:
    cmp cx ,0
    je print 
    mov al ,0
    mov al , [si]
    mov [di] , al
    inc di
    dec si
    dec cx
    jmp l2
print: 
    mov [di],"$"
    mov dx , offset str2
    mov ah ,9
    int 21h   
    ret
    
    
str1 db "tomorrow never dies:james bond 007$"
str2 db "live die repeat : tom cruice$"