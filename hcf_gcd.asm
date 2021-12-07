include 'emu8086.inc'

print "enter n1 value : "
call scan_num
printn
mov n1 , cx 
mov cx ,0     

print "enter n2 value : "
call scan_num
printn
mov n2 , cx 
mov cx ,0 

 mov ax,n1
 mov bx, n2

l1:
    mov dx ,0
    div bx
    cmp dx ,0
    je print 
    mov ax ,0
    mov ax , bx
    mov bx ,dx
    jmp l1
print:

    mov ax, bx
    call print_num
    


n1 dw ?
n2 dw ?

define_scan_num
define_print_num
define_print_num_uns