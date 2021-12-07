include 'emu8086.inc'

org 100h

print "enter a number : " 
call scan_num   
;mov n,cx         

;user input value will be in cx

mov ax, 1

;call print_num  
printn

;label1:  factorial using loops
    
    ;mul cx 
    ;loop label1
    ;call print_num
;mov cx, n
label1:    ; factorial using creating a while loop
    cmp cx,1
    je  exit
    
         
     mul cx
     dec cx
     jmp label1
exit:  
     call print_num
     print "thank you"
     ret
    




n dd ?; declaring a variable ....in place of question mark we can initialize the value
define_scan_num
define_print_num
define_print_num_uns