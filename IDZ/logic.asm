.include "macroslib.asm"
.global logic
.text
logic:
	push (ra)
        li      t0 0 # qtty
        li	t1 0 # last num
        loop_sum:	# loop where we change A to B
		lw	t1 (a0)
	        bgtz	t1 positive
	        bltz	t1 negative
	        j	continue
	        positive:	# if positivem, element = 2
		      	li	t1 2
	      		sw	t1 (a0)
	      		j	continue
      		negative:	# negative, element += 5
	      		addi	t1 t1 5
      			sw	t1 (a0)
      			j	continue
      		continue:
      			addi	a0 a0 4
      			addi 	t0 t0 1
		        bgt	a1 t0 loop_sum	# check if we reached the end of array
		        pop (ra)
	      		ret
      	