.global _start

.text
_start:
		mov $1, %rax
		add $0x30, %ax
		xor %rax, %rax
		.quad this 
		.asciz  "\f\000\000\000\000\000\000\000\003\000\000\000\005\000\000"
this:
	.ascii "./examples.rs"
