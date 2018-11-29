org 07c00h
mov ax,cx
mov ds,ax
mov es,ax
call cdy
jmp $
cdy:
    mov ax,bootmassage
    mov bp,ax      ; 显示的字符串
    mov cx,50      ; cx显示的字符串长度
    mov ax,01301h  ; ah=0x13 al=显示输出方式 01表示字符串只含有显示字符，其属性在BL中。显示后光标位置改变
    mov bx,0009h   ; bh页码 bl属性(c红色, b蓝色, a绿色, 9紫色, )
    mov dx,0x0500  ; dh行 dl列
    int 10h
ret
bootmassage: db "Loading my system ..."	
times 510-($-$$) db 0
dw 0xaa55