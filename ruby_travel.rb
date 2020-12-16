require_relative './travel'

# create an instance of travel
tours = {"sevendaysurfspotstour" => 1485.00, "eightdayrelaxingsurf" => 1128.00, "fourteendaysurfguidingwithtours" => 1647.00 }
travel = Travel.new("Adventure Tours",tours)

travel.welcome

loop do
    travel.print_tours
    puts
    puts "Would you like a tour? When you are finished type 'done'."
    input = gets.strip.downcase
    # if 'done', break from loop
    if (input === 'done')
        break
    end

#    Check for valid menu item
    item = travel.tours.validate_item(input)
    if (item)
        puts "How many tours would you like?"
        quantity = gets.to_i
        if (quantity > 0)
            travel.add_to_order(item, quantity)
        end
    end
end

#  print the order summary
travel.print_order