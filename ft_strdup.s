section .text
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc
	global _ft_strdup

_ft_strdup:
	push rdi
	call _ft_strlen
	inc rax
	mov rdi,rax
	call _malloc
	cmp rax,0
	je error
	pop rdi
	mov rsi,rdi
	mov rdi,rax
	call _ft_strcpy
	ret
error:
	pop rdi
	ret
