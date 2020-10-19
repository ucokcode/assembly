.global _start
.data
hi: .string "hi\n"
len = . - hi
int: .int 1,0
.text
_start:
		mov $int, %r8

		mov (%r8), %rax
		mov (%r8), %rdi
		mov $hi, %rsi
		mov $len, %rdx 
		syscall

		mov $60, %rax
		mov 4(%r8), %rdi
		syscall
