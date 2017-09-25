class Order < ApplicationRecord
  PAYMENT_TYPES = ["Check", "Credit Card", "Purchase Order" ]
  has_many :line_items

  def add_line_items_form_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end
end
