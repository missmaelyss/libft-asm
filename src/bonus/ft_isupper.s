; ----------------------------------------------------------------------------------------
; La fonction isupper() vérifie si l'on a une lettre majuscule.
;
;   int isupper (int c);
;
;   Les valeurs renvoyées sont non nulles si le caractère c entre dans la catégorie
;   testée, et zéro sinon
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

    global  _ft_isupper
    
    section .text
_ft_isupper:
        mov     rax, rdi                 ; result (rax) initially holds c
        cmp     rax, 'Z'                 ; is c more than 122 ('z')?
        jg      .false
        cmp     rax, 'A'                 ; is c less than 97 ('a')?
        jl      .false
        mov     rax, 1
        jmp     .end
.false:
        xor     rax, rax                   ; will return 0
.end:
        ret                             ; return rax