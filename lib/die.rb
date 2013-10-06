
class Die
  def initialize(num_of_sides)
    @num_of_sides = num_of_sides
  end
  def sides
    @num_of_sides
  end
  def roll
    rand(1..@num_of_sides)
  end 
end    
