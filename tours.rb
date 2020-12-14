require_relative './tour_item'

class Tours
    def initialize
        @tour_items = []
    end
    def add_item(name, price)
        tour_item = TourItem.new(name, price)
        @tour_items << tour_item
    end
    def get_price(name)
        item = @tour_items.find {|tour_item| tour_item.name === name}
        return item.price
    end
    def get_items
        return @tour_items
    end
end 