include 'emu8086.inc'


mov bl,5     ; bl value  is first loop which should be length -1 (n-1)
mov bh,5     ; bh value  is second loop , which should be lenght -bl-1 
mov len ,bh  ; length -=1
mov ax ,0    
mov cl ,s    
l1: 
    mov j,0
    cmp i,bl
    je exit
    
    l2:  
        mov bh,len    ; since bh updates every time we have to replace it with actual value everytime     
        sub bh,i
        ;sub bh,1
        cmp j,bh
        je jloop
        
        ;here the swap code comes  in subloop (sl1) 
        
        lea si ,arr 
        mov al,[si]
        
        sl1:          ; this sl1 is to travel in the array to the j th value
        cmp cl,j
        je sl2
        inc si
        mov al,[si]   ; storing arr[j] vlaue in the al register
        
        inc cl
        jmp sl1
        
        sl2:          ; this sl2 is to store arr[j+1] value in ah
        inc si
        mov ah,[si]
        cmp al ,ah    ; if al is less than ah no worries else we have to swap
        jb sl3
        mov [si],al   ; swapping values in the array using registers 
        dec si
        mov [si],ah
        sl3:     
        
        inc j
        mov cl,0
        jmp l2
        
        jloop:
        
       
        inc i
        jmp l1
         
exit: 
    print " bubble sort "
    printn
    lea si , arr 
    inc bl 
    mov s ,0
    l3: 
        cmp s,bl 
        je completed
        mov ax ,0
        mov al , [si]
        call print_num 
        print " "
        inc si 
        inc s
        jmp l3
completed:
ret

i db 0 
j db 0 

s db 0
len db 0
bhh db 0
arr db 10, 20 , 25, 5 ,6,-2
define_print_num
define_print_num_uns

