class Item < ApplicationRecord
    has_many :carts
    has_many :orders
    validates :title, :description, :prices, :image_url, presence: true
    validates :description, length: { maximum: 140 }

end
