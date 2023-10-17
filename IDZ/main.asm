.include "macroslib.asm"
.data
	array:	.space  1024
	arrend:	
.text
	main:
		la      a0 array	# adress counter
		# input elements
		input (a0, a1)	# in: a0 - adress; out: a1 - len
		la      a0 array	# adress counter
		# change array
		logic (a0, a1)	# in: a0 - adress, a1 - len
		la      a0 array	# adress counter
		# print new array
		output (a0, a1)	# in: a0 - adress; a1 - len
		exit
        
