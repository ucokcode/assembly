.global _start

.data
val: .byte 55

.text
_start:
	mov ($val), %rax


