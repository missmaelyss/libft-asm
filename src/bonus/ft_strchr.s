; ----------------------------------------------------------------------------------------
; La fonction strchr() renvoie un pointeur sur la première occurrence du caractère c dans
; la chaîne s.
;
;   char *strchr(const char *s, int c);
;   
;   Les fonctions strchr() et strrchr() renvoient un pointeur sur le caractère correspondant,
;   ou NULL si le caractère n'a pas été trouvé.
;   
; Note that the parameters have already been passed in rdi, rsi
; ----------------------------------------------------------------------------------------

    global  _ft_strchr
    section .text

_ft_strchr:
        mov     dl, byte[rdi]
        cmp     dl, sil
        je      .end
        cmp     dl, 0
        je      .null
        inc     rdi
        jmp     _ft_strchr
.null:
        xor     rdi, rdi
.end:
        mov     rax, rdi
        ret