class Floor
  attr_accessor :width, :height, :cost

  def initialize(width, height, cost)
    @width = width
    @height = height
    @cost = cost
  end

  def square_feet
    @width * @height
  end

  def calculate_cost
    @cost * square_feet
  end
end

def handle_input
  puts 'What\'s the cost of the floor?'
  @cost_response = gets.chomp.to_i
  puts 'What\'s the width of the floor?'
  @width_response = gets.chomp.to_i
  puts 'What\'s the height of the floor?'
  @height_response = gets.chomp.to_i
end

handle_input
f = Floor.new(@width_response, @height_response, @cost_response)
puts f.calculate_cost