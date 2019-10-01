; ----------------------------------------------------------------------------------------
; La fonction isiascii() vérifie si c est un unsigned char sur 7 bits, entrant dans le
; jeu de caractères ASCII.
;
;   int isascii (int c);
;
;   Les valeurs renvoyées sont non nulles si le caractère c entre dans la catégorie
;   testée, et zéro sinon
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------
    
    global  _ft_isascii
    
    section .text
_ft_isascii:
        mov     rax, rdi                 ; result (rax) initially holds c
        cmp     rax, 127                 ; is c more than 122 ('z')?
        jg      .false
        cmp     rax, 0                 ; is c less than 97 ('a')?
        jl      .false
        mov     rax, 1
        jmp     .end
.false:
        xor     rax, rax
.end:
        ret                             ; return rax