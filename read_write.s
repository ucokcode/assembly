.global _start
.data
file: .string "hello.txt"
write: .string "hello file\n"
len= . - write
space: .space 100
.text
_start:
		mov $2,%rax 	
		mov $file,%rdi
		mov $2,%rsi
		mov $0777,%rdx
		syscall 

		mov %rax,%r8

		mov $0, %rax
		mov %r8,%rdi
		mov $space,%rsi
		mov $100, %rdx
		syscall

		mov $1, %rax
		mov $1, %rdi
		syscall

		mov $3, %rax 	
		mov %r8, %rdi
		syscall

		mov $60,%rax 	
		mov $0, %rdi
		syscall


# writefile:
# 		mov %rax,%r8
# 		mov $1,%rax
# 		mov %r8, %rdi
# 		mov $write, %rsi
# 		mov $len, %rdx 
# 		syscall
# 		ret
