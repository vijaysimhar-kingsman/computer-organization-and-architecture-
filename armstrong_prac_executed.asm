include 'emu8086.inc'
mov ax, 153
mov num , ax


pow:
    cmp ax ,0
    je s1
    mov dx ,0
    div ten
    inc n
    jmp pow
    
    s1:
        mov ax , num
        mov dx ,0
        
        jmp s2
    
    s2: 
        mov r ,0
        cmp ax ,0
        je break 
        
        mov dx ,0
         
        div ten
        
        mov r , dx
        mov cx , n 
        dec cx
        mov bx, ax
        mov ax ,r
        
        s3:
            mul r
            loop s3
        add arm , ax
        mov ax ,bx
        mov bx ,0
        jmp s2 
         
        
        
            
    
break:
    mov ax ,num
    cmp ax , arm
    je pal
    print "not pal"
    ret
    pal:
        print "palindrome"
        ret    
        
rev dw ?
arm dw 0
n dw ?
r dw ?
num dw ?    
ten dw 10 

define_print_num
define_print_num_uns