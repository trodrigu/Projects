# Caclulates pi to n decimals using BBP algorithm

# first the right and left summations function
def S(j,n):
	# Left Sum
	s = 0.0
	k = 0
	while k <= n:
		r = 8*k+j
		s = (s + pow(16, n-k, r) / r) % 1.0
		k += 1
	# Right Sum
	t = 0.0
	k = n + 1
	while 1:
		newt = t + pow(16, n-k) / (8*k+j)
		# Iterate until t no longer changes
		if t == newt:
			break
		else:
			t = newt
		k += 1
	return s + t 

def main(n):
	# k = raw_input("Enter how many decimals you want to see of pi?")

	n -= 1
	x = (4*S(1, n)-2*S(4, n) - S(5, n) - S(6, n))
	return ("%014x" % int(x * 16**14))

	# hex_num = ("%014x" % int(x * 16**14))
	# return hex_num



print main(0)
print '\n'
print main(1)
print main(10000)
