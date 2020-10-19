.globl maxofthree

.text
		mov %rdi, %rax
		cmp %rsi, %rax
		cmovl %rsi, %rax
		cmp %rdx, %rax
		cmovl %rdx, %rax
		ret
