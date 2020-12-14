class TourItem
    attr_reader :price, :name
    
    def initialize(name, price)
        @name = name
        @price = price
    end
    
    def to_s 
        return "#{@name}" + "  "*(30 - @name.length)+"  ...  #{@price}"
    end
end
