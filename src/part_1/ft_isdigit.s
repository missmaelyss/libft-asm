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
        mov     eax, edi                 ; result (rax) initially holds c
        cmp     eax, '9'                 ; is c more than 122 ('z')?
        jg      false
        cmp     eax, '0'                 ; is c less than 97 ('a')?
        jge      end
false:
        mov     eax, 0                   ; will return 0
end:
        ret                             ; return rax