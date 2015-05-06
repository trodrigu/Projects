require 'pp'
require 'Prime'

def handle_input
  puts 'Enter a number to see the prime Factors.'
  response = gets.chomp
  @response = response.to_i
end

def prime_it(n)
  p Prime.prime_division(n)
end  

handle_input
prime_it(@response)