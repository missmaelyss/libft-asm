; ----------------------------------------------------------------------------------------
; La fonction memcpy() copie n octets depuis la zone mémoire src vers la zone mémoire dest.
; Les deux zones ne doivent pas se chevaucher. Si c'est le cas, utilisez plutôt memmove(3).  
;
;   void *memcpy(void *dest, const void *src, size_t n);
;   
;   La fonction memcpy() renvoie un pointeur sur dest.  
;   
; Note that the parameters have already been passed in rdi, rsi, rdx
; ----------------------------------------------------------------------------------------

    global _ft_memcpy

    section .text
 _ft_memcpy:
 		push 	rdi
 		mov		rcx, rdx
 		rep movsb
		pop		rdi
		mov 	rax, rdi
		ret