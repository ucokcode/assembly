.global _start

.data 
		hello: .string "hello\n"
		a: .space 10
		len = . -hello
.text
_start:
		call output
		call exit

output:
		mov $1, %rax
		mov $1, %rax
		mov $hello, %rsi
		mov $len, %rdx
		syscall
		ret

exit:
		mov $60, %rax
		mov $0, %rdi
		syscall
		ret
