class Item < ApplicationRecord
    has_and_belongs_to_many :carts
    has_many :users, through: :cart

    validates :title, :description, :price, :image_url, presence: true
    validates :description, length: { maximum: 140 }

end
