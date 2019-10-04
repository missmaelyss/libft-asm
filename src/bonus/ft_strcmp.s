; ----------------------------------------------------------------------------------------
; La fonction strcmp() compare les deux chaînes s1 et s2. Elle renvoie un entier négatif,
; nul, ou positif, si s1 est respectivement inférieure, égale ou supérieure à s2.
;
;   int strcmp(const char *s1, const char *s2);
;   
;   Les fonctions strcmp() et strncmp() renvoient un entier inférieur, égal ou supérieur
;   à zéro si s1 (ou ses n premiers octets) est respectivement inférieure, égale ou
;   supérieure à s2.
;   
; Note that the parameters have already been passed in rdi, rsi
; ----------------------------------------------------------------------------------------

    global  _ft_strcmp
    section .text

_ft_strcmp:
        mov     dl, byte[rdi]
        mov     bl, byte[rsi]
        cmp     dl, bl
        jne     .end
        cmp     byte[rdi], 0
        je      .end
        cmp     byte[rsi], 0
        je      .end
        inc     rdi
        inc     rsi
        jmp     _ft_strcmp
.end:
        xor     rax, rax
        mov     al, byte[rdi]
        sub     al, byte[rsi]
        ret