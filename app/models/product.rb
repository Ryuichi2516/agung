class Product < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :brand
end
