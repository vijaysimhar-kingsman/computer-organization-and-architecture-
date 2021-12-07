
include 'emu8086.inc'

print "enter a number : "
call scan_num
printn

mov ax , cx  
mov n , cx
mov cx,0

reverse:
       cmp ax,0
       je exit
       
       mov dx ,0
       div ten 
       mov r , dx
       mov q, ax
       mov ax,rem
       mov cx,10
       mul cx
       add ax , r
       
       mov rem,ax
       
       mov ax,q
       jmp reverse
  
exit:
    mov ax,rem
    cmp ax, n
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
q dd ?
r dd ?
define_scan_num
define_print_num
define_print_num_uns