.include "macroslib.asm"
.data
	array:	.space  1024
	arrend:	
.text
	tests:
		print_str ("Test 1")
		newline
		la      a0 array	# adress counter
		li	a1 10	# len
		# elements of testing array:
		add_el (a0, 7)
		add_el (a0, 0)
		add_el (a0, 0)
		add_el (a0, 15)
		add_el (a0, -39)
		add_el (a0, 0)
		add_el (a0, 93)
		add_el (a0, -24)
		add_el (a0, 37)
		add_el (a0, 26)
		la      a0 array	# adress counter
		# print old array
		output (a0, a1)	# in: a0 - adress; a1 - len
		newline
		la      a0 array	# adress counter
		# change array
		logic (a0, a1)	# in: a0 - adress, a1 - len
		la      a0 array	# adress counter
		# print new array
		output (a0, a1)	# in: a0 - adress; a1 - len
		newline
		
		print_str ("Test 2")
		newline
		la      a0 array	# adress counter
		li	a1 3	# len
		# elements of testing array:
		add_el (a0, -17)
		add_el (a0, 0)
		add_el (a0, 18)
		la      a0 array	# adress counter
		# print old array
		output (a0, a1)	# in: a0 - adress; a1 - len
		newline
		la      a0 array	# adress counter
		# change array
		logic (a0, a1)	# in: a0 - adress, a1 - len
		la      a0 array	# adress counter
		# print new array
		output (a0, a1)	# in: a0 - adress; a1 - len
		newline
		
		print_str ("Test 3")
		newline
		la      a0 array	# adress counter
		li	a1 5	# len
		# elements of testing array:
		add_el (a0, -15899)
		add_el (a0, 3985)
		add_el (a0, 0)
		add_el (a0, 0)
		add_el (a0, -9789)
		la      a0 array	# adress counter
		# print old array
		output (a0, a1)	# in: a0 - adress; a1 - len
		newline
		la      a0 array	# adress counter
		# change array
		logic (a0, a1)	# in: a0 - adress, a1 - len
		la      a0 array	# adress counter
		# print new array
		output (a0, a1)	# in: a0 - adress; a1 - len
		exit
