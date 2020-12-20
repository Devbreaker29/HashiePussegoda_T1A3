class TourOrder
    def initialize
        @order_items = Hash.new(0)
    end
    def add_item(name, quantity)
        @order_items[name] += quantity
    end
    def get_items
        return @order_items
    end

    def display
        puts " "
        puts "Thank you for coming!"
        puts "Here is your order"
        puts "  "
        @order_items.each do |name, quantity|
        puts "#{quantity} #{name}"
        puts "  "
    end
end
end
