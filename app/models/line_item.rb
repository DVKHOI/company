class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart
  belongs_to :order, required: false
  def total_price
    product.price * quantity
  end
end
