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
        return item ? item.price : nil
    end
    def get_items
        return @tour_items
    end
    def display
      puts "Tours"
      puts "--------"
      @tour_items.each {|item| puts item}
      return nil
    end

    def validate_item(name)
        @tour_items.each do |tour_item|
            if tour_item.name === name
                 return name
            end
         end
         return nil
      end
   end 

