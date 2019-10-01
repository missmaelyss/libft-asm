; ----------------------------------------------------------------------------------------
; La fonction isalnum() vérifie si l'on a un caractère alphanumérique.
;
;   int isalnum (int c);
;   
;   Les valeurs renvoyées sont non nulles si le caractère c entre dans la catégorie
;   testée, et zéro sinon
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

    global  _ft_isalnum
    extern  _ft_isalpha
    extern  _ft_isdigit
    
    section .text
_ft_isalnum:
		push	rsp
        call    _ft_isdigit
        cmp     rax, 0
        jne     .done
        call    _ft_isalpha
.done:
		pop		rsp
        ret                             ; return c be in rax