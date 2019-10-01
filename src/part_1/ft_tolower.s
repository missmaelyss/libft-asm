; ----------------------------------------------------------------------------------------
; La fonction tolower() convertit la lettre c en minuscule si c'est pos­sible.
;   
;   int tolower (int c);
;
;   VALEUR RENVOYÉE
;       La valeur renvoyée est celle de la  lettre  convertie,  ou
;       bien c si la conversion n'etait pas possible.
;
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

    global  _ft_tolower

    section .text
_ft_tolower:
        mov     eax, edi                ; result (rax) initially holds c
        cmp     eax, 'Z'                 ; is c more than 90 ('Z')?
        jg      .done
        cmp     eax, 'A'                 ; is c less than 65 ('A')?
        jl      .done
        add     eax, 0x20
.done:
        ret                             ; return c be in rax