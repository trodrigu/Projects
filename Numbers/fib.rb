# Enter in n and get the nth number in the fibonacci sequence
require 'pp'
class Fib
  attr_accessor :n

  def initialize(n)
    @n = n
  end

  def fib_it
    x = 0
    y = 1
    fib_array = [0, 1]
    until fib_array.size == @n
      z = x + y
      fib_array << z
      x, y = y, z
    end
    puts
    pp fib_array
    puts
  end
end

def handle_number
  puts 'How many numbers would you like from the fibonacci sequence?'
  puts 'Press \'q\' to quit'
  response = gets.chomp
  exit if response == 'q'
  @number = response.to_i
end

loop do
  handle_number
  f = Fib.new(@number) 
  f.fib_it
end