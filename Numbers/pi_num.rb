# Calculate the number of pi's decimals with a given input
# Uses Machin-like formula

puts 'Enter the amount of decimals you would like from pi'
k = gets.chomp.to_i

def S(k)
  include Math
    if k > 100
  	puts "We can only do under 100 decimals after pi."
  else
    pi = 4 * (4 * atan(1.0/5.0) - atan(1.0/239.0))
    printf("%.#{k}f", pi)
    print "\n"
  end
end

S(k)