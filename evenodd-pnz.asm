include 'emu8086.inc' 
org 100h  

;to say weather given number is positive or negative

mov al ,10
cmp al ,0
je zero
ja positive
jb negative
       jmp exit
zero:
    print "it is zero" 
    printn
    jmp even
    
positive:
    print "it is positive"
    printn
    jmp even
    
negative:
    print " it is negative" 
    printn
    
    
even:
;to say weather given number is even or odd
mov ax , 17776
mov bx , 2

div bx
cmp dx ,1
je lebel1

    print "it is an even number "
    jmp exit

lebel1:
    print "it is an odd number" 
exit: 
    printn
    print "thank you"
    ret