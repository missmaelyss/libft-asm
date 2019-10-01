; ----------------------------------------------------------------------------------------
; La fonction puts() écrit la chaîne de caractères s et un retour-chariot final sur
; stdout.
;
;   int puts(const char *s);
;   
;   puts() et fputs() renvoient un nombre non négatif si elles réussissent et EOF si
;   elles échouent.  
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------
    
    global  _ft_puts
    extern  _ft_strlen
    section .text
_ft_puts:
        xor       rbx, rbx
        mov       rbx, rdi
        test      rdi, rdi
        je        .null
.print:
        cmp       byte[rbx], 0
        je        .end  
        mov       rax, 0x02000004           ; system call for write
        mov       rdi, 1                    ; file handle 1 is stdout
        mov       rsi, rbx                  ; address of string to output
        mov       rdx, 1                    ; number of bytes
        syscall 
        inc rbx
        jnz  .print
.null:
        mov       rax, 0x02000004           ; system call for write
        mov       rdi, 1                    ; file handle 1 is stdout
        mov       rsi, null                 ; address of string to output
        mov       rdx, 6                    ; number of bytes
        syscall 
.end:
        mov       rax, 0x02000004           ; system call for write
        mov       rdi, 1                    ; file handle 1 is stdout
        mov       rsi, newline              ; address of string to output
        mov       rdx, 1                    ; number of bytes
        syscall 
        ret

    section   .data
newline:    db    10                        ; note the newline at the end
null:       db    "(null)", 0               ; note the newline at the end