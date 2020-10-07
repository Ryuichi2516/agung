class DeliveryAddress < ApplicationRecord
  belongs_to :user
  validates :first_name, :last_name, :phonetic_first_name, :phonetic_last_name, :postal_code, :prefecture_id, :city, :ward, :user_id, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
end
