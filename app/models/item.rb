class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to :user
  has_one :buys
  has_one_attached :image

  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :postage
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :shipping_day
  

  with_options presence: true do
    validates :name
    validates :user
    validates :image
    validates :explanation
    validates :price, numericality: { only_integer: true }
    validates :category, numericality: { other_than: 1 }
    validates :status, numericality: { other_than: 1 }
    validates :postage, numericality: { other_than: 1 }
    validates :prefecture, numericality: { other_than: 1 }
    validates :shipping_day, numericality: { other_than: 1 }
  end
end

