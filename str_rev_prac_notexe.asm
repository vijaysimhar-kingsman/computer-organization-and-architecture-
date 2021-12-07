include 'emu8086.inc'

lea si ,str1

mov ah ,1
mov cx ,0

l1: 

    int 21h
    cmp al ,"$"
    je exit
    mov [si],al 
    inc cx
    inc si
    
    jmp l1 

exit:  
    ;print "hellooo "
    mov [si] ,"$"   
   
    
    mov dl , offset str1
    
    mov ah ,9
    int 21h 
    
    ;printn
    
    dec si
    lea di ,str2 
    mov dl,0
    l2:           
        mov bx ,0
        mov bh,[si]
        mov [di],bh
        inc di
        dec si 
        loop l2
    l3:   
        mov [di] ,"$"
        mov dl , offset str2
        mov ah ,9
        int 21h
            
    
    
    ret














str1 db "VVVVVVVVVVVVVVVVVVVVVVVVV$"
str2 db "iiiiiiiiiiiiiiiiiiiiiiiii$"