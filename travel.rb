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

    def order_total
        total = 0
        @order.get_items.each do |item,quantity|
            total += @tours.get_price(item) * quantity
        end
        return total
    end

    def print_order
        if @order
            @order.display
            puts "Total:      $%.2f" % order_total
        else
            puts "Thank you for touring with us!"
        end
        puts
    end

    def print_tours
       @tours.display
    end
end

    