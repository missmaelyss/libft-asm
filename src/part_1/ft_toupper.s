; ----------------------------------------------------------------------------------------
; La fonction toupper() convertit la lettre c en majuscule si c'est pos­sible.
;
;   int toupper (int c);
;
;   VALEUR RENVOYÉE
;       La valeur renvoyée est celle de la  lettre  convertie,  ou
;       bien c si la conversion n'etait pas possible.
;
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

    global  _ft_toupper
    
    section .text
_ft_toupper:
        mov     eax, edi                ; result (rax) initially holds c
        cmp     eax, 'z'                 ; is c more than 122 ('z')?
        jg      .done
        cmp     eax, 'a'                 ; is c less than 97 ('a')?
        jl      .done
        sub     eax, 0x20
.done:
        ret                             ; return c be in rax