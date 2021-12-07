include 'emu8086.inc'


;mov ah, 2 and int 21h 
; when the int 21h statement occurs it checks the dl value and stores in al and prints the al value
;lea si , str
;mov dl , [si]
;mov ah , 2
;int 21h

mov dl , offset str
mov ah, 9
int 21h

; when the ah value is 9 data segement register which has the base address of the string 
; and the dx registre which holds the offset of the string 
; prints all the values till the doller sign encounters


ret
str db "hello kingsman$"