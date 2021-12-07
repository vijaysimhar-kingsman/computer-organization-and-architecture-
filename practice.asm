include 'emu8086.inc'

;print "enter a number :"
;call scan_num        
;printn   


lea si, inp
mov bx ,3
mov dx ,bx

l1:
   cmp bx ,0
   je stop
   mov cx ,0
   print "enter :"
   call scan_num
   printn
   mov [si],cx
   inc si
   dec bx
   jmp l1
   
stop: 
    mov bx,dx
    lea si , inp
    lea di ,outp
    mov cx,bx
    
    l2: 
        cmp cx ,0
        je l3
        mov ax ,0
        mov al,[si]
        mov [di],al
        inc di
        inc si
        dec cx 
        jmp l2 
    l3:
    mov cx,bx 
    lea di ,outp 
    l4:
        cmp cx ,0
        je maximum
        mov ax ,0
        mov al,[di]
        call print_num
        print " " 
        inc di
        dec cx
        jmp l4



maximum:
    mov cx , bx
    lea di ,outp
    l5:      
       cmp cx ,0
       je print_max
       mov ax ,0
       mov al , [di]
       cmp max ,al
       ja skip 
       
       mov max ,al
       dec cx  
       inc di
       jmp l5
       
       skip: 
        dec cx  
        inc di
        jmp l5
        
        
print_max:
    
    mov ax ,0
    mov al ,max
    printn  
    print "max of the given array elements is : "
    call print_num 
    jmp minimum 
    ret
  
         

minimum:
    mov cx , bx
    lea di ,outp
    l6:      
       cmp cx ,0
       je exit
       mov ax ,0
       mov al , [di]
       cmp min ,al
       jb skip1 
       
       mov min ,al
       dec cx  
       inc di
       jmp l6
       
       skip1: 
        dec cx  
        inc di
        jmp l6
        
        
exit:
mov ax ,0
mov al ,min
printn  
print "min of the given array elements is : "
call print_num
ret
 

inp db 10 , 20 , 30 ,40 ,50  

outp db 0 ,0 ,0 ,0
max db 0  
min db 255
define_scan_num
define_print_num
define_print_num_uns