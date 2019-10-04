; ----------------------------------------------------------------------------------------
; La fonction bzero() met à 0 (octets contenant « \0 ») les n premiers octets du bloc
; pointé par s.
;
;   void bzero (void *s, size_t n);
;
; Note that the parameters have already been passed in rdi, rsi
; ----------------------------------------------------------------------------------------

        global    _ft_bzero

        section   .text
_ft_bzero:
        mov ecx, esi
        cmp ecx, 0
        je  .end
.zero:
        mov byte[rdi], 0
        inc rdi
        dec ecx
        jnz .zero
.end:
        ret
