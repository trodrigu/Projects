require 'bigdecimal'
require 'bigdecimal/util'

# Initializes the array
array = Array.new

# Uses put string method to collect first number
puts( "Put in a number?" )

# Uses get string method, chomp, and to integer method to format 
answer = Integer(gets.chomp)

array.push(answer)

loop do
	puts( "Put in another number?" )
	loopanswer = gets.chomp
	break if loopanswer == "n"
	array.push(Integer(loopanswer))
end

# Print the array
print array, "\n"

sum = array.inject{ |sum, x| sum + x }

mean = (sum.to_d / array.length.to_d)

n_1 = array.map { |x| ((x.to_d - mean)**2) }

sum_square = (n_1.inject{ |sum, x| sum + x }).to_d

sd = (sum_square / n_1.length.to_d)**0.5

sum = sum.to_f
mean = mean.to_f
sd = sd.to_f

puts( "The sum is #{sum}" )
puts( "The mean is #{mean}" )
puts( "The standard deviation is #{sd}" )

# Median
if array.length.odd?
	median_index = array.length / 2
	median = array[median_index]
else
	m1 = (array.length / 2) - 1
	m2 = (array.length / 2)
	sum_m = array[m1] + array[m2]
	median = (array[m1].to_d + array[m2].to_d) / 2.0
end

puts( "The median is #{median}" )