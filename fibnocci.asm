include 'emu8086.inc'

print "enter a number : "
call scan_num
printn  

mov bl ,0
mov al, bl  

call print_num 
printn 

mov dl ,1    
mov al ,dl  

call print_num 
printn

a:  
    mov al,dl
    
    add dl,bl
    
    mov bl , al 
    
    mov al , dl 
    call print_num
    printn
    loop a











n dd ?
define_scan_num
define_print_num
define_print_num_uns