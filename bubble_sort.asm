include 'emu8086.inc'

print "enter how many number you wanna enter : "
call scan_num
printn
mov bx ,cx
mov bx ,len
lea si ,arr

ui:
   cmp bx ,0
   je print
       print "enter element : "   
       call scan_num
       printn  
       mov [si] , cx
       mov cx ,0
       inc si 
       dec bx
       jmp ui
sort:
    l1:
       cmp i , len-1
       je exit
       cmp j,len
       je j_zero
       mov k ,0
       l11:
            cmp k,i
            
            
       mov si , [arr]
       mov di , [arr]
        

       
   
   
ret 
arr db 0,0,0,0,0
i db 0
j db 0 
k db 0
min db 99
len db ?
define_scan_num
define_print_num
define_print_num_uns
