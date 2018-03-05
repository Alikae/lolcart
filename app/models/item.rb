class Item < ApplicationRecord
    validates :title, :description, :prices, :image_url, presence: true
    validates :description, length: { maximum: 140 }

end
