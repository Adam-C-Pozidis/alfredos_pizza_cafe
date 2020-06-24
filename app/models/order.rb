class Order < ApplicationRecord

  # creating the order model so we will keep track of  all of our customers orders
  belongs_to :user
end
