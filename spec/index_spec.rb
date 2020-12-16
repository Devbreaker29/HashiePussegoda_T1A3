require_relative '../travel'
require_relative '../tours'
require_relative '../tour_item'
require_relative '../tour_orders'

describe TourItem do
    it 'should return the price of the tour' do
        name = "SevenDaySurfSpotsTour" 
        price = 1485.00
        tour_item = TourItem.new(name, price)
        expect(tour_item.price).to eq(price)
   end 
   it 'should return the name of the tour' do
    name = "SevenDaySurfSpotsTour" 
    price = 1485.00
    tour_item = TourItem.new(name, price)
    expect(tour_item.name).to eq(name)
end 

end

describe Tours do
    it 'should be able to get an item price' do
        name = "SevenDaySurfSpotsTour" 
        price = 1485.00
        tours = Tours.new
        tours.add_item(name, price)
        expect(tours.get_price(name)).to eq(price)
   end
    it 'should be able to add an item' do
        name = "SevenDaySurfSpotsTour" 
        price = 1485.00
        tours = Tours.new
        tours.add_item(name, price)
        expect(tours.get_items().length).to be(1)    
end
    it 'should return the item name for a valid item' do
        name = "SevenDaySurfSpotsTour" 
        price = 1485.00
        tours = Tours.new
        tours.add_item(name, price)
        expect(tours.validate_item(name)).to eq(name)
    end
    it 'should return nil for an invalid item' do
        name = "SevenDaySurfSpotsTour" 
        price = 1485.00
        tours = Tours.new
        tours.add_item(name, price)
        expect(tours.validate_item("EightDayRelaxingSurf")).to eq(nil)
    end
end

describe TourOrder do
    it 'should add an item to the order' do
        order = TourOrder.new
        name = "SevenDaySurfSpotsTour"  
        quantity = 2
        order.add_item(name,quantity)
        expect(order.get_items().length).to be(1)
    end
    it 'should update an item quantity' do
    order = TourOrder.new
    name = "SevenDaySurfSpotsTour" 
    quantity = 2
    quantity_add = 3
    order.add_item(name,quantity)
    order.add_item(name,quantity_add)
    expect(order.get_items()[name]).to be(quantity+quantity_add)
    end
end

describe Travel do
  it 'should create a Travel App with a name' do
     name = "Travel Sri Lanka App"
     tour_items = {}
     travel = Travel.new(name, tour_items)
     expect(travel.name).to eq(name)
  end
  it 'should create a Travel App with tours' do
     name = "Travel Sri Lanka App"
     tour_items = {SevenDaySurfSpotsTour: 1485.00, EightDayRelaxingSurf: 1128.00} 
     travel = Travel.new(name, tour_items)
     expect(travel.tours.get_items.length).to be(2)
  end
  it 'should add an item to order' do
      name = "Travel Sri Lanka App"
      tour_items = {SevenDaySurfSpotsTour: 1485.00, EightDayRelaxingSurf: 1128.00} 
      travel = Travel.new(name, tour_items)
      item = "SevenDaySurfSpotsTour" 
      quantity = 1
      travel.add_to_order(item, quantity)
      expect(travel.get_order().get_items().length).to be(1)
  end
  it 'should define a welcome method' do
      name = "Travel Sri Lanka App"
      tour_items = {SevenDaySurfSpotsTour: 1485.00, EightDayRelaxingSurf: 1128.00}
      travel = Travel.new(name, tour_items)
      expect(travel.welcome).to eq(nil)
end
   it 'should define a print_tours method' do
       name = "Travel Sri Lanka App"
       tour_items = {SevenDaySurfSpotsTour: 1485.00, EightDayRelaxingSurf: 1128.00}
       travel = Travel.new(name, tour_items)
       expect(travel.print_tours).to eq(nil)
end
   it 'should calculate order total' do
       name = "Travel Sri Lanka App"
       tour_items =  {"SevenDaySurfSpotsTour" => 1485.00, "EightDayRelaxingSurf" => 1128.00} 
       travel = Travel.new(name, tour_items)
       item = "SevenDaySurfSpotsTour" 
       quantity = 1
       travel.add_to_order(item, quantity)
       item = "SevenDaySurfSpotsTour"
       quantity = 2
       travel.add_to_order(item, quantity)
       expect(travel.order_total).to be(4455.00)
end
end
     
