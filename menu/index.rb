require '../lib/die'

def main_menu
  puts 'Press "r" to play dice. Press "x" to exit.'
  option = gets.chomp
  if option == 'r'
    puts 'How many sides would you like on your dice?'
    num_of_sides = gets.chomp.to_i
    # puts num_of_sides
    puts "Here comes your roll..."
    die = Die.new(num_of_sides)
    puts die.roll
  elsif option == 'x'
    "Thanks for stopping by!"
  else
    "invalid entry, please type 'r' or 'x'."
    main_menu  
  end
end
main_menu
    


