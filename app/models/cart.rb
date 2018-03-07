class Cart < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :items
end


def compute_total
  total = 0
  @cart.items.each do |i|
    total += i.price
  end
  return total
end
