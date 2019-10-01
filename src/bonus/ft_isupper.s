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
        mov     eax, edi                 ; result (rax) initially holds c
        cmp     eax, 'Z'                 ; is c more than 122 ('z')?
        jg      false
        cmp     eax, 'A'                 ; is c less than 97 ('a')?
        jge      end
false:
        mov     eax, 0                   ; will return 0
end:
        ret                             ; return rax