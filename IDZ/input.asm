.include "macroslib.asm"
.global input
.text
input:
	push (ra)
	li	t1 1
        li	t2 1024
	input_len:	# input length of array
		print_str ("Choose a length of array from 1 to 1024: ")
	        read_int (t0)	# len
		blt	t0 t1 input_len	# len < 1 => repeat input_len
		bgt	t0 t2 input_len	# len > 1024 => repeat input_len
        li      t1 0 # qtty
	loop_fill:   # loop where we input and add new elements to array
		print_str ("Input integer: ")
	        read_int (t2)
		sw      t2 (a0)
		addi    a0 a0 4
	        addi    t1 t1 1
	        bgt	t0 t1 loop_fill	# check if we reached the end of array
        mv	a1 t0	# a1 - len of array
        pop (ra)	
        ret
        