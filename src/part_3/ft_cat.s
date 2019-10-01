; ----------------------------------------------------------------------------------------
; The cat utility reads files sequentially, writing them to the standard output.  The file
; operands are processed in command-line order.  If file is a single dash (`-') or absent,
; cat reads from the standard input.  If file is a UNIX domain socket, cat connects to it
; and then reads it until EOF.  This complements the UNIX domain binding capability
; available in inetd(8).
;
;	void ft_cat(int fd);
;   
; Note that the parameters have already been passed in rdi
; ----------------------------------------------------------------------------------------

	global	_ft_cat
	section	.text

_ft_cat:
		not			edi
		cmp			edi, 0
		je			.end
		not			edi
.read:
		push		rdi
		sub			rsp, 256
		mov			rax, 0x02000003
		mov			rsi, rsp
		mov			rdx, 255
		syscall
		jc			.error
.write:	
		mov			rdx, rax
		mov			rax, 0x02000004
		mov			rdi, 1
		mov			rsi, rsp
        syscall
		jc			.error
		add			rsp, 256
		pop			rdi
		test		rax, rax
		jnz			.read
		jmp			.end
.error:
		add			rsp, 256
		pop			rdi
.end:
		ret