include 'emu8086.inc'

;print "enter a number : "
;call scan_num
;printn
;mov al,cl
mov bh ,n1
mov al ,n2
l1:
    cmp bh , al
    ja bh_max
    mov max , al 
    mov max2 ,al
    mov cl ,bh  
    mov l ,cl 
    
    jmp l2
    bh_max:
    mov max , bh 
    mov max2 ,bh
    mov cl ,al
    mov l ,cl
   
    l2: 
        ;cmp i,cl
        ;je exit  
        
        mov al ,max
        mov ah ,0
        div l  
        cmp ah,0
        je exit
        ;inc i
        mov ax ,0
        mov al,max2
        add max , al
        ;mov max,al
        jmp l2
exit:       
mov ax ,0
mov al , max 
;mov al , max2
call print_num  
ret
        
       





n1 db 12
n2 db 5
max db 0 
max2 db 0; greater of the two values stored in max
l db ?   ; lesser value stored in l
i db 0   ; i is just an iterator
define_print_num
define_print_num_uns
