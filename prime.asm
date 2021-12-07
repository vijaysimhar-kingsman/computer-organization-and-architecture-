include 'emu8086.inc'

print "how many prime numbers you want : "
call scan_num

printn

mov ax , cx 
mov n , ax
mov bx ,2
mov cx,0
prime:
    cmp ax , bx
    je check 
    
    div bx
    mov ax , n 
    ;call print_num
    cmp dx , 0
    
    je increment 
    inc bx
    jmp prime
    
increment:  
    inc cx
    inc bx
    jmp prime

check:
    cmp cx ,1
    jne notprime
    print "yes the number is a prime number " 
    ret

notprime:
    print "this number is not a prime" 
    mov ax, cx
    call print_num
    ret 
   
    
    
    





n dw ?
define_scan_num

define_print_num  

define_print_num_uns