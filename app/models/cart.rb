class Cart < ApplicationRecord
  belongs_to :user
  has_many :items
#a=User.create(email:"tral@la.com, password:"azerty")
#a.cart = Cart.create
end
