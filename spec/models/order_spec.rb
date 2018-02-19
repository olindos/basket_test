require 'rails_helper'

describe Order do
  
  it "calculates the subtotal price" do
      item1 = OrderItem.new(unit_price: 100)
      item2 = OrderItem.new(unit_price: 200)

      order = Order.new
      order.subtotal
      order.subtotal = 300
  end

end
