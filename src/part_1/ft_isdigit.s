; ----------------------------------------------------------------------------------------
; La fonction isdigit() vérifie si l'on a un chiffre (0 à 9).
;
;   int isdigit (int c);
;
;   Les valeurs renvoyées sont non nulles si le caractère c entre dans la catégorie
;   testée, et zéro sinon
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------
    
    global  _ft_isdigit
    
    section .text
_ft_isdigit:
        mov     rax, rdi                 ; result (rax) initially holds c
        cmp     rax, '9'                 ; is c more than 122 ('z')?
        jg      .false
        cmp     rax, '0'                 ; is c less than 97 ('a')?
        jl     .false
        mov     rax, 1
        jmp     .end
.false:
        xor     rax, rax
.end:
        ret                             ; return rax