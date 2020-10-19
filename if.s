.global _start

.data 
		hello: .string "hello\n"
		a: .space 10
		len = . -hello
.text
_start:
		mov $5, %r8
						# push %r8
						# sub $5, %r8
						# pop %r8

		cmp $5, %r8
						# jle = jump less equal
						# jz = jump if zero
						# jg = jump greater
						# jl = jump less
		jle output
		call exit

output:
		mov $1, %rax
		mov $1, %rax
		mov $hello, %rsi
		mov $len, %rdx
		syscall
		jmp exit

exit:
		mov $60, %rax
		mov $0, %rdi
		syscall
		ret
