class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  belongs_to :shopping_cart, optional: true


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    #the user will have many orders and we want to keep track on all of the orders
    # also will have 1 shopping cart.
end
