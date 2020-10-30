section .text
	global	_ft_strcpy

_ft_strcpy:
	mov	r10, 0

while:
	cmp byte[rsi+r10], 0
	je end
	mov rdx,[rsi+r10]
	mov byte[rdi+r10],dl
	inc r10
	jmp while
end:
	mov byte[rdi+r10],0
	mov rax,rdi
	ret