class DeliveryAddressesController < ApplicationController

  def index
    redirect_to new_delivery_address_path
  end

  def new
    @DeliveryAddress = DeliveryAddress.new
  end

  def create
    @DeliveryAddress = DeliveryAddress.new(delivery_address_params)
    unless @DeliveryAddress.valid?
      render :new and return
    end
    @DeliveryAddress.save
    redirect_to user_path(current_user)
  end

  def edit
    @DeliveryAddress = DeliveryAddress.find(params[:id])
  end

  def update
    @DeliveryAddress = DeliveryAddress.find(params[:id])
    @DeliveryAddress.update(delivery_address_params)
    redirect_to users_delivery_address_path
  end

  def destroy
    delivery_address = DeliveryAddress.find(params[:id])
    delivery_address.destroy
    redirect_to users_delivery_address_path
  end

  

  private
  def delivery_address_params
    params.require(:delivery_address).permit(
      :first_name,
      :last_name,
      :phonetic_first_name,
      :phonetic_last_name,
      :postal_code,
      :prefecture_id,
      :city,
      :ward,
      :building,
      :phone_number)
      .merge(user_id: current_user.id)
  end
end
