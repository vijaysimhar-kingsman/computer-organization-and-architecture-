include 'emu8086.inc'

org 100h

print "enter a number : " 
call scan_num            

mov ax, cx

printn

call print_num








define_scan_num
define_print_num
define_print_num_uns