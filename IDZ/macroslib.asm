# print integer from register
.macro print_int (%x)
	push (a0)
	li a7, 1
	mv a0, %x
	ecall
	pop (a0)
.end_macro

# read integer in any register except for a0
.macro read_int(%x)
	push (a0)
	li a7, 5
	ecall
	mv %x, a0
	pop (a0)
.end_macro

# print string from register
.macro print_str (%x)
	.data
		str:	.asciz %x
	.text
		push (a0)
		li a7, 4
		la a0, str
		ecall
		pop (a0)
.end_macro

# print char from register
.macro print_char(%x)
	push (a0)
	li a7, 11
	li a0, %x
	ecall
	pop (a0)
.end_macro

.macro newline
	print_char('\n')
.end_macro

# exit programm
.macro exit
	push (a0)
	li a7, 10
	ecall
	pop (a0)
.end_macro

# Store register in stack
.macro push(%x)
	addi	sp, sp, -4
	sw	%x, (sp)
.end_macro

# Pop element from top of stack to register
.macro pop(%x)
	lw	%x, (sp)
	addi	sp, sp, 4
.end_macro

# Add new elemnt %y to array in %x and advance adress %x
.macro add_el(%x, %y)
	li	t0 %y
	sw      t0 (%x)
	addi    %x %x 4
.end_macro

# input len and elements of array
.macro input (%x %y)
	push (a0)
	mv	a0 %x
	jal	input
	mv	%y a1
	pop (a0)
.end_macro

# change array
.macro logic (%x %y)
	push (a0)
	push (a1)
	mv	a0 %x
	mv	a1 %y
	jal	logic
	pop (a1)
	pop (a0)
.end_macro

# print array
.macro output (%x %y)
	push (a1)
	push (a1)
	mv	a0 %x
	mv	a1 %y
	jal	output
	pop (a1)
	pop (a0)
.end_macro
