include 'emu8086.inc'

mov ax , 123
mov n, ax
mov q , ax
reverse:
      mov ax ,q  
      cmp ax,0
      je rev
      mov dx ,0  
      div ten  
      mov q , ax 
      mov r , dx
      mov ax , r 
      call print_num
      
      ;mov ax ,rem
      ;mul ten
      
      ;add ax , r
      ;mov rem , ax
      jmp reverse 
       
       
rev:
 ret      
       
r dd ?       
rem dd 0  
q dd ?
ten dd 10
n dd ?
define_print_num
define_scan_num
define_print_num_uns
