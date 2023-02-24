;
; A simple os that prints "aitumik" on the screen
;

mov ah,0x0e             ; move teletype interrupt to "ah"

mov al,"A"				;
int 0x10 				; 

mov al,"i"				;
int 0x10

mov al,"t"				;
int 0x10

mov al,"u"				;
int 0x10

mov al,"m"				;
int 0x10

mov al,"i"				;
int 0x10

mov al,"k"				;
int 0x10

jmp $ 					; jump to the current address

times 510-($-$$) db 0	; write the first 510 bytes with 0x0

dw 0xaa55				; write the magic number to the last two bytes

