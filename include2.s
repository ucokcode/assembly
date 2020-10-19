.data 
		hello: .string "hello\n"
		len = . -hello
.text
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
