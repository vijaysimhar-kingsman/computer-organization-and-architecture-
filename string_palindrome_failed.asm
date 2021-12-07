include 'emu8086.inc'

lea si , str
lea di , str

l1:
    mov al ,[si]
    cmp al ,"$"
    je end
    inc si
    jmp l1
end:
    dec si
    jmp store_data
store_data:
    cmp di ,si
    je data_stored_in_str2 
    mov ax ,0
    mov al,[si]
    mov str2 ,al
    dec si
    jmp store_data   
    
data_stored_in_str2:
    mov ax ,0
    mov al , [si]
    mov str2,al ; storing first character 
    
    mov str2,"$" ; ending it with doller
    lea di , str2
    jmp stop
stop:
    
    mov dl , [di]
    cmp dl ,"$"
    je exit
    mov ah , 2
    int 21h
    inc di
    jmp stop
exit:
    ret       
      
; storing data in str2 is not working out it storing only single bit data all the time 
; when we are trying to mov data to str2 every time data is overriding 
; we have to increment the data location





str db "vijay$"
str2 db ?