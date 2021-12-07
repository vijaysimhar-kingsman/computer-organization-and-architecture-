include 'emu8086.inc'

print "enter how many number you wanna enter : "
call scan_num
printn
mov bx ,cx

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
print:
       
   
   
ret 
arr db 0,0,0,0,0

define_scan_num
define_print_num
define_print_num_uns
