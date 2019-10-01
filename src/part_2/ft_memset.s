; ----------------------------------------------------------------------------------------
; La fonction memset() remplit les n premiers octets de la zone mémoire pointée par s
; avec l'octet c.
;
;   void *memset (void *s, int c, size_t n);
;   
;   La fonction memset() renvoie un pointeur sur la zone mémoire s.  
;   
; Note that the parameters have already been passed in rdi, rsi, rdx
; ----------------------------------------------------------------------------------------

    global _ft_memset

    section .text
 _ft_memset:
        push    rdi
        mov     rax, rsi 
        mov     rcx, rdx 
        rep     stosb
        pop     rdi
        mov     rax, rdi
        ret