class User < ApplicationRecord
  has_one :cart
  has_many :items, through: :cart

  has_many :orders

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def after_create
    
  end

end
