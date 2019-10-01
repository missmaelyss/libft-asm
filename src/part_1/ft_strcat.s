; ----------------------------------------------------------------------------------------
; La fonction strcat() ajoute la chaîne src à la fin de la chaîne dest en écrasant le
; caractère nul (« \0 ») à la fin de dest, puis en ajoutant un nouveau caractère nul final.
; Les chaînes ne doivent pas se chevaucher, et la chaîne dest doit être assez grande pour
; accueillir le résultat.
;
;   char *strcat(char *dest, const char *src);
;   
;   Les fonctions strcat() et strncat() renvoient un pointeur sur la chaîne résultat dest.
;   
; Note that the parameters have already been passed in rdi, rsi
; ----------------------------------------------------------------------------------------

    global  _ft_strcat
    
    section .text
_ft_strcat:
        push    rdi
.lendest:
        cmp     byte[rdi], 0
        je     .filldest
        inc     rdi
        jmp     .lendest
.filldest:
        mov     al, byte[rsi]
        mov     byte[rdi], al
        cmp     byte[rsi], 0
        je      .end
        inc     rdi
        inc     rsi
        jmp      .filldest
.end:
        pop     rdi
        mov     rax, rdi
        ret