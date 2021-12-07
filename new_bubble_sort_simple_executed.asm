include 'emu8086.inc'

mov bl ,5
mov bh ,5
mov len ,bh
l1:
    cmp i , bl
    je sort
    mov j,0
    lea si , arr
    
    mov bh,len
    sub bh , i
    
    l2:
        cmp j,bh
        je jloop_end
        
        mov ah , [si] 
        inc si 
        mov al , [si]
        
        cmp ah , al
        jbe continue
        mov [si] ,ah
        dec si
        mov [si] , al
        inc si 
        
        continue: 
            mov ax ,0
            inc j
            jmp l2

     jloop_end:
        inc i
        jmp l1


sort:
ret


i db 0
j db 0

len db 0

arr db 10,20,2,23,11,9,'0'

define_scan_num
define_print_num
define_print_num_uns