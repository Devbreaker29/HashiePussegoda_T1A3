require_relative './tours'
require_relative './tour_orders'
class Travel
    attr_reader :name, :tours
    def initialize(name, tour_items)
        @name = name
        @tours = Tours.new
        populate_tours(tour_items)
        @order = TourOrder.new
    end

    def populate_tours(tour_items)
        tour_items.each do |name, price|
            @tours.add_item(name,price)
    end
    end
    def add_to_order(item,quantity)
        @order.add_item(item, quantity)
    end
    
    def get_order
        return @order
    end

    def welcome
        puts "Welcome to #{@name}!"
    end
    def print_tours
       @tours.display
    end

end

     name = "Travel Sri Lanka App"
     tour_items = {SevenDaySurfSpotsTour: 1485.00, EightDayRelaxingSurf: 1128.00}
     travel = Travel.new(name, tour_items)
     travel.welcome
     travel.print_tours