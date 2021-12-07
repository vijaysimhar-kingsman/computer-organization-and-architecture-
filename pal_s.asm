include 'emu8086.inc'

print "enter a number : "
call scan_num
printn

mov ax , cx 
mov n , cx


reverse:    
       
       cmp ax,0
       je exit
       mov cx ,10 
       mov dx ,0
       div cx  
       mov r , dx
       mov Q , ax
       mov ax, rem 
       mov cx , 10
       mul cx
       add ax ,r 
       mov rem , ax
       mov ax , Q
       jmp reverse
  
exit:
    
    mov cx ,n 
    cmp cx , rem 
    je same
    print "not"
    ret
    
same:
    print "pal"
    ret
        
       
  
     


ten dd 10
rev dd ?
n dd ?
rem dd 0 
r dd ? 
q dd ?
define_scan_num
define_print_num
define_print_num_uns