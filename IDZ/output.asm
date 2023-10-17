.include "macroslib.asm"
.global output
.text
output:
	push (ra)
        li      t0 0 # qtty
        li	t1 0 # last num
        loop_sum:	# loop where we print elements of array
		lw	t1 (a0)
	        print_int (t1)
	        print_char (' ')
      		addi	a0 a0 4
      		addi 	t0 t0 1
	        bgt	a1 t0 loop_sum	# check if we reached the end of array
	        pop (ra)
      		ret
      	