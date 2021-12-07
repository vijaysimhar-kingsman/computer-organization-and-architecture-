
include 'emu8086.inc'
             
print "enter how many even numbers you want : "
call scan_num                                  

;this will store in cx

mov ax, cx 
mov bx , 2
;mov ax , 0

label1:
    
    div bx
    cmp dx ,1 ; remainder is 1
    je skip
    mov ax , cx
    call print_num 
    skip:
    dec ax
    loop label1 
        



n dd ?
define_print_num
define_print_num_uns
define_scan_num




