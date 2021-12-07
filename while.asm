include 'emu8086.inc'

;while loop 
mov ax, 0

label1: 
    cmp ax, 10d
    je exit
    call print_num
    printn
    inc ax
    jmp label1
    
exit:
    ret 
    
define_print_num  ; these inbuilt functions are used to print ax values
define_print_num_uns   
    