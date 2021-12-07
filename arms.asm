include 'emu8086.inc'


    
mov ax,525
mov Q, ax

ams:
    mov ax,Q
    cmp ax,0
    je exit
    mov cx,10
    mov dx,0
    div cx
    mov r,dx
    mov cx,2
    mov Q,ax
    mov ax,r
    loop1:
        mul r
        loop loop1
    add f,ax
    jmp ams
    


exit:
cmp f,525
je same
mov ax,f
call print_num

print "no" 
hlt

same:
print "same"
hlt



actual dd ?
n dd ?
rem dd 0  
Q dd ?
r dd ?
ten dd ?
f dd 0
define_scan_num
define_print_num
define_print_num_uns
