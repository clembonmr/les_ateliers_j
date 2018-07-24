class Order < ApplicationRecord
  belongs_to :user
  belongs_to :basket
  has_many :products
  has_many :reviews
end
