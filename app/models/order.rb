class Order < ApplicationRecord
  belongs_to :user
  has_many :items
  belongs_to :order_status
end


def subtotal
  order_items.collect {|oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0}.sum
end
private
  def set_order_status
    self.order_status_id = 1
  end

  def update_subtotal
    self[:subtotal] = update_subtotal
  end
end
