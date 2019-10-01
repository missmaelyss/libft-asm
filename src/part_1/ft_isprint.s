; ----------------------------------------------------------------------------------------
; La fonction isprint() vérifie s'il s'agit d'un caractère imprimable, y compris
; l'espace.
;
;   int isprint (int c);
;
;   Les valeurs renvoyées sont non nulles si le caractère c entre dans la catégorie
;   testée, et zéro sinon
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------
    
    global  _ft_isprint
    
    section .text
_ft_isprint:
        mov     eax, edi                 ; result (rax) initially holds c
        cmp     eax, 126                 ; is c more than 122 ('z')?
        jg      false
        cmp     eax, 32                 ; is c less than 97 ('a')?
        jge      end
false:
        mov     eax, 0                   ; will return 0
end:
        ret                             ; return rax