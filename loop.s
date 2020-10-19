.global _start

.data 
		hello: .string "hello\n"
		len = . -hello
.text
_start:
	mov $0, %r8
	call loop	

loop:
		mov $1, %rax
		mov $1, %rax
		mov $hello, %rsi
		mov $len, %rdx
		syscall
		
		add $1, %r8
		cmp $1000000, %r8
		jz exit

		jmp loop
exit:
		mov $60, %rax
		mov $0, %rdi
		syscall
		ret

