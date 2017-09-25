class Admin::DashboardController < ApplicationController
  layout "admin_application"
  def index
    @product_count = Product.count
    @category_count = Category.count
    @user_count = User.count
    @order_count = Order.count
    
  end

  def charts
  end

  def elements
  end

  def widgets
  end

  def panels
  end
end