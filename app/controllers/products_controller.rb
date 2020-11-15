class ProductsController < ApplicationController
  def index
    @products = Product.all.includes(:images).order(created_at: :desc).limit(7)
    @stocks = Product.where(stock:true).includes(:images).order(created_at: :desc).limit(7)
  end
end
