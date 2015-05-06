require 'pp'
require 'Prime'
i = 1 
arr = []
def find_prime(nth_number)
    arr = Prime.first nth_number
    pp arr.last
    puts
end
loop do
  puts 'Press enter if you would you like to find the next prime?'
  puts 'If not press \'q\'.'
  response = gets.chomp
  exit if response == 'q'
  find_prime(i)
  i += 1
end