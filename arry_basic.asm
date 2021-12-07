include 'emu8086.inc'

 lea si ,inp ;here we are taking input into si
 lea di ,outp 

mov cl,3 
mov n ,cl
l:

   
    mov al , [si]
    inc si
    mov [di],al
    inc di
    loop l


mov cl ,n
lea di,outp
l1:
  mov al , [di]
  printn
  call print_num 
  inc di
  loop l1


                                



ret 
inp db 10 , 20 ,30
outp db 0, 0, 0 
n db ?
min db 255

n1 db 10  
define_print_num_uns 
define_print_num                              


;code executed successfully any doubts contact jambuka manoj 