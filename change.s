.global _start
.data
hi: .string "hello\n"
len = . - hi
.text
_start:
		mov $hi, %r8
		movb $'a', 3(%r8)

		mov $1, %rax
		mov $1, %rdi
		mov %r8, %rsi
		mov $len, %rdx 
		syscall

		mov $60, %rax
		mov $0, %rdi
		syscall

