include 'emu8086.inc'

print "enter a number : "
call scan_num

printn

mov ax,cx
dec cx
mov q,ax
perfect:
       mov ax, q
       mov dx ,0
       div cx   
       cmp dx ,0
       je addd
       loop perfect
       addd: 
           add sum,cx
           loop perfect
                 
       
mov ax ,q      
cmp sum , ax
jne nott
    print "perfect"  
    ret
nott:
    print "not a perfect"
    ret   

q dd ?
sum dd 0
define_print_num
define_scan_num
define_print_num_uns