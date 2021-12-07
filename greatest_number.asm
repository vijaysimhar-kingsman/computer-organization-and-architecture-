include 'emu8086.inc'

lea si , arr
mov cx , 4
l1:
    mov al , [si]
    cmp max , al
    jb less
    l2:
    inc si
    loop l1
    less:
        cmp cx ,0
        je exit
        mov max , al
        jmp l2 
exit: 
mov al,max
call print_num
ret
           
        
     
      

    
   

max db 0
arr db 10 , 20 , 25 ,21 
define_print_num
define_print_num_uns