class ProductsController < ApplicationController
  def index
    @NewProducts = Product.all.includes(:images).order(created_at: :desc).limit(7)
    @StockProducts = Product.where(stock:true).includes(:images).order(created_at: :desc).limit(7)
    @RandomProducts = Product.all.includes(:images).order("RAND()").limit(7)
  end
end
