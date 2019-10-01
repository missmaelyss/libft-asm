; ----------------------------------------------------------------------------------------
; La fonction isalpha() vérifie si l'on a un caractère alphabétique.
;
;   int isalpha (int c);
;
;   Les valeurs renvoyées sont non nulles si le caractère c entre dans la catégorie
;   testée, et zéro sinon
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

    global  _ft_isalpha
    extern  _ft_isupper
    extern  _ft_islower
    
    section .text
_ft_isalpha:
        push    rsp
        mov     rax, rdi
        call    _ft_isupper
        cmp     rax, 0
        jne     .done
        call    _ft_islower
.done:
        pop     rsp
        ret                             ; return c be in rax