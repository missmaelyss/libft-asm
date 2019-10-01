; ----------------------------------------------------------------------------------------
; La fonction strlen() calcule la longueur de la chaîne de caractères s, sans compter
; l'octet nul « \0 » final.  
;
;   size_t strlen(const char *s);
;   
;   La fonction strlen() renvoie le nombre de caractères dans la chaîne s.  
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

    global _ft_strlen

    section .text
 _ft_strlen:
        xor rcx, rcx
        not rcx
        xor rax, rax
        repne scasb
        inc rcx
        not rcx
        mov rax, rcx
        ret