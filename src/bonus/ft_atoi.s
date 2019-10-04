; ----------------------------------------------------------------------------------------
; La fonction atoi() convertit le début de la chaîne pointée par nptr en entier de type 
; int . Le résultat est identique à un appel strtol(nptr, (char **) NULL, 10); à la
; différence que atoi() ne détecte pas d'erreur.
;
;   int atoi(const char *nptr);
;   
;   Le résultat de la conversion. 
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

    global  _ft_atoi
    extern  _ft_isdigit
    section .text
    
_ft_atoi:
        xor     rcx, rcx
        xor     rsi, rsi
        mov     r10, 1
        jmp     .spaces
.increment:
        inc     rdi
.spaces:
        cmp     byte[rdi], 32
        je     .increment
        cmp     byte[rdi], 9
        je     .increment
        cmp     byte[rdi], 10
        je     .increment
        cmp     byte[rdi], 11
        je     .increment
        cmp     byte[rdi], 12
        je     .increment
        cmp     byte[rdi], 13
        je     .increment
.sign_less:
        cmp     byte[rdi], '-'
        jne     .sign_plus
        xor     r10, r10
        not     r10
        inc     rdi
        jmp     .read_number
.sign_plus:
        cmp     byte[rdi], '+'
        jne     .read_number
        inc     rdi
.read_number:
        push    rdi
        cmp     byte[rdi], 0
        je      .end
        
        mov     cl, byte[rdi]
        mov     rdi, rcx
        
        call    _ft_isdigit
        cmp     rax, 0
        je      .end

        pop     rdi
        inc     rdi

        sub     rcx, 48
        mov     rax, 10
        mul     rsi
        mov     rsi, rax
        add     rsi, rcx
        jmp     .read_number
.end:
        mov     rax, r10
        mul     rsi
        pop     rdi
        ret