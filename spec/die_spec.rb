require 'rspec'
require 'die.rb'

describe 'Die' do 
  it 'initializes a die object' do 
    test_die = Die.new(6)
    test_die.should be_an_instance_of Die
  end
  it 'creates a new die and assigns it an amount of sides' do
    test_die = Die.new(4)
    test_die.sides.should eq 4
  end 
  it 'rolls the die and returns a random integer' do
    test_die = Die.new(6)
    test_die.stub(:rand).with(1..6).and_return(4)
    test_die.roll.should eq 4
  end
end  