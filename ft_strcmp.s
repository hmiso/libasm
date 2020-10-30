section .text
	global _ft_strcmp

_ft_strcmp:
	mov rax, 0
	mov r10, 0

while:
	movzx rbx, byte[rdi+r10]
	movzx rcx, byte[rsi+r10]
	cmp rbx,rcx
	jg	maximal
	jl	minimal
	cmp byte[rdi+r10], 0
	je	end
	inc r10
	jmp while
minimal:
	mov	rax,-1
	ret

maximal:
	mov rax, 1
	ret

end:
	mov rax, 0
	ret