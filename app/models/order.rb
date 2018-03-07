class Order < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :items
  after_create :take_items

  def take_items
    self.items = current_user.cart.items
    current_user.cart.items.clear
  end

end
