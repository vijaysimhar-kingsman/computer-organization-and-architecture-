include 'emu8086.inc'

lea si , arr
mov cx ,5

l1:
    mov al,[si]
    cmp min , al
    ja greater 
    l2:
    inc si
    loop l1
    
    greater:
        cmp cx ,0
        je exit
        mov min ,al
        jmp l2       
exit:
mov al,min
call print_num   
print " is the minimum number "
ret   


min db 255
arr db 10,1 ,20,9,2
define_print_num
define_print_num_uns