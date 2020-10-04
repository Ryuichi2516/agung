class DeliveryAddressesController < ApplicationController
  def new
    @DeliveryAddress = DeliveryAddress.new
  end

  def create
    DeliveryAddress.create(DeliveryAddress_params)
  end

  private
  def DeliveryAddress_params
    params.require(:DeliveryAddress)
    .permit(
      :first_name,
      :last_name,
      :phonetic_first_name,
      :phonetic_last_name,
      :postal_code,
      :prefecture_id,
      :city,
      :ward,
      :building,
      :phone_number,
      :user_id
    )
  end
end
