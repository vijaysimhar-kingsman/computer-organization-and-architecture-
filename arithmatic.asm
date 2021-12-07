include 'emu8086.inc'

print "enter a number :"
call scan_num        
printn
mov ax ,cx
mov n1 ,ax
mov cx ,0 

print "enter another number :"
call scan_num        
printn  
mov bx ,cx
mov n2, bx
mov cx ,0

add ax ,bx 
              
              
print "sum of two given number is : "             
call print_num
printn
        
mov ax , n1 
mov bx , n2

sub ax ,bx 
              
              
print "difference of two given number is : "             
call print_num
printn     

        
mov ax , n1 
mov bx , n2

mul bx 
              
              
print "multiplication of two given number is : "             
call print_num
printn

mov ax , n1 
mov bx , n2
mov dx ,0
div bx 
 
print "division"             
printn         
              
print "quotient of two given number : "             
call print_num
printn  

print "remainder of given two numbers is : "
mov ax ,dx
call print_num  
                
                               


printn




          

        
       

n1 dw ?
n2 dw ?
define_scan_num
define_print_num
define_print_num_uns