; ----------------------------------------------------------------------------------------
; La fonction strdup() renvoie un pointeur sur une nouvelle chaîne de caractères qui est
; dupliquée depuis s. La mémoire occupée par cette nouvelle chaîne est obtenue en appelant
; malloc(3), et peut (doit) donc être libérée avec free(3).
;
;   char *strdup(const char *s);
;   
;   La fonction strdup() renvoie un pointeur sur la chaîne dupliquée, ou NULL s'il n'y
;	avait pas assez de mémoire.  
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

;   void *memcpy(void *dest, const void *src, size_t n); rdi, rsi, rdx

    global 	_ft_strdup
    extern  _ft_strlen
    extern  _ft_memcpy
    extern  _malloc

    section .text
 _ft_strdup:
 		push	rdi
 		call	_ft_strlen
 		mov		rdi, rax
 		mov		rdx, rax
 		call	_malloc
 		test	rax, rax
 		je		.end
 		push	rax
 		pop		rdi
 		mov		rsi, rdi
 		mov		rdi, rax
 		call	_ft_memcpy
.end:
		pop		rax
		ret
