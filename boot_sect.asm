;
; A simple os that prints "aitumik" on the screen
;

mov ah,0x0e             ; move teletype interrupt to "ah"

; First attempt
;mov al,g_spot
;int 0x10

; Second attempt
;mov al,[g_spot]
;int 0x10

; Third attempt
;mov bx,g_spot ; this will move the pointer of g_spot to bx 
;add bx,0x7c00 ; when you add 0x7c00 to bx the new pointer to g_spot will be bx + 0x7c000
;mov al,[bx]	  ; now we move the content at bx to al
;int 0x10 	  ; then call the screen interrupt

; Fourth attempt 
mov al,[0x7c09] ; is it possible to move g_spot to and address? 
int 0x10

jmp $ 					; jump to the current address

g_spot:
	db "X"

times 510-($-$$) db 0	; write the first 510 bytes with 0x0

dw 0xaa55				; write the magic number to the last two bytes

