include 'emu8086.inc'
mov ax , d
mov bx ,2
    
;lea si , str
lea di , arr
;l:
 ;   cmp [di] ,2
  ;  je stop 
   ; add di ,2
    ;jmp l
add di ,8

;mov ax , [di]
;call print_num    
   
sub di ,2
;mov [di] ,"a"         
l1:
   cmp ax , 0
   je print
   mov dx , 0
   div bx
   mov [di] , dx 
   
   sub  di ,2 
   jmp l1

print: 
mov [di],ax


      











ret

d dw 10
arr dw 0,0,0,0,2;  
define_print_num
define_print_num_uns
