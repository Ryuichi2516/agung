class Admin::ProductsController < ApplicationController

  def new
    @product = Product.new
    @image = @product.images.build
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      if params[:images].present?
        params[:images][:file].each do |image|
          @image = @product.images.create!(file: image, product_id:@product.id)
        end
        redirect_to root_path and return
      end
      render :new and return
    end
    render :new
  end


  private

  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :category_id,
      :brand_id,
      :quantity,
      :price,
      :stock,
      images_attributes: [:file]
    )
  end
end