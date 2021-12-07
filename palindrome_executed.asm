;palindrome

include 'emu8086.inc'

lea si , str
lea di , str    
;str db "sanddnas$"

l1:
    mov al ,[si]
    cmp al ,"$"
    je end_of_string
    inc si
    jmp l1
end_of_string:
    dec si ; no si is pointing to the end of the string
    jmp check_palindrome
check_palindrome:
    mov bx , 0
    mov bh , [si]
    mov bl , [di]
    cmp bh , bl
    jne not_pal
    cmp si , di
    jle stop 
    inc di
    dec si
    jmp check_palindrome
     
    
not_pal:
    print "not pal"
    ret

stop:
    print "pal"
    ret 
exit:
    ret       
      
; storing data in str2 is not working out it storing only single bit data all the time 
; when we are trying to mov data to str2 every time data is overriding 
; we have to increment the data location





str db "sanddnas$"
str2 db ?