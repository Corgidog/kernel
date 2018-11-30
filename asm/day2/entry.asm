org 07c00h
mov ax,cx
mov ds,ax
mov es,ax

mov al, 2  ; 9year 8month 7day 4hour 2 miniute 0secound
out 70h, al
in al, 71h
jmp $


times 510-($-$$) db 0
dw 0xaa55