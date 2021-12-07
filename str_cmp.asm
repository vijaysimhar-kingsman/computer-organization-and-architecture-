include 'emu8086.inc'


lea si , s1
mov al ,[si]
cmp al, s2 
je equal
print "not equal"
jmp exit
equal:
    print "equal"
exit: 
ret


              
str db "hello kingsman$"
s1 db "a"
s2 db "a"
  

define_print_num
define_print_num_uns