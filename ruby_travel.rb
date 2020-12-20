require_relative './travel'
require "tty-prompt"

prompt = TTY::Prompt.new

# create an instance of travel
tours = {"Seven Day Surf SportTour" => 1485.00, "Eight Days Relaxing Surf" => 1128.00, "Fourteen Days with Tours" => 1647.00 }
travel = Travel.new("Adventure Tours",tours)

travel.welcome


loop do
    travel.print_tours
    # which tour would you like?
    # gem tty prompt 
    puts "  "
    puts "Would you like a tour? When you are finished type 'done'."
    input = gets.strip
    # if 'done', break from loop
    if (input === 'done')
        break
    end

   
#    Check for valid menu item
    item = travel.tours.validate_item(input)
    if (item)
        puts "  "
        puts "How many tours would you like?"
        quantity = gets.to_i
        if (quantity > 0)
            travel.add_to_order(item, quantity)
         end
    end
end


#  print the order summary

travel.print_order

