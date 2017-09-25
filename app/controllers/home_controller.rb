class HomeController < ApplicationController
  include CurrentCart
  before_action :set_cart
	before_action :set_product, only:[:detail]

	def index
    if params[:category_id].present?
      products = Product.where(category_id: params[:category_id])
    else
      products = Product.all
    end
    @q = products.ransack(params[:q])
    @products = @q.result.includes(:category).page(params[:page]).per(6)
	end

	def set_product
		@product = Product.find(params[:id])
	end

	def by_category
  		@products = Product.where(category_id: params[:id])
    	@categories = Category.all
	end

	def detail
		@categories = Category.all
		@products = Product.all
	end

	def set_product
			@product = Product.find(params[:id])
	end
end