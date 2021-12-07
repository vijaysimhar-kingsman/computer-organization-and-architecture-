include 'emu8086.inc'

print " enter your name : "



lea si , str
mov ah, 1
l1:

    int 21h ; when ah value is 1 and intterupt is made 
            ; it asks for user input and stores its value in al register   
            
    cmp al , "$"
    je end
    mov [si] ,al 
    inc si
    jmp l1
     
end:  
    mov [si] ,al 
    ;lea di , str
    print "hellooo  "
    printn 
    mov ah,9
    mov dl,offset str
    int 21h
    
    
    ret      

    
    

str db "name name name name name $" 
define_scan_num
define_print_num
define_print_num_uns