require_relative 'validators'
require 'tour_selection'
system("clear")

def welcome_and_input

tour_selection.show_options

puts "Welcome to Sri Lanka select a tour"
puts "Would you like a tour?"
# Ctrl + C to get out of loop
answer = gets.chomp.to_s
answer1 = 'Do you like surfing?'
answer2 = 'Thank you, take care.'

if answer == "yes" || answer == "Yes"
    puts answer1
else answer == "no" || answer == "No"
    puts answer2
end

response = gets.chomp.to_s
response1 = '7 Day Surf Spots Tour in Hikkaduwa etc. or 8 Day Relaxing Surf and Yoga Holiday in Ahangama, Southern Province or 14 Day Surf Guiding with Tours and Excursions in Arugam Bay, Sri Lanka' 
response2 = 'Do you like biking?' 

if response == "yes" || response == "Yes"
    puts response1
else response == "no" || response == "No"
    puts response2
end

response5 = gets.chomp.to_s
response3 = '3 Day Tea Trail Guided Motorbike Tour in Sri Lanka or ANCIENT KINGDOMS & THE NORTH 13 day Motorcycle tour or NATURE TRAIL RIDE AND EXPLORE THE UNSPOILED NATURE 2 day motorcycle tour'
response4 = 'Do you like Hiking?'

if response5 == "yes" || response5 == "Yes"
    puts response3
else response5 == "no" || response5 == "No"
    puts response4
end

response6 = gets.chomp.to_s
response7 = 'Sri Lanka Tracks & Trails - 14 Days Colombo to Negombo hiking or Sri Lanka: Hike, Bike & Kayak or On Foot in Sri Lanka'
response8 ='Thank you, take care.'

if response6 == "yes" || response6 == "Yes"
    puts response7
else response6 == "no" || response6 == "No"
    puts response8
end

end