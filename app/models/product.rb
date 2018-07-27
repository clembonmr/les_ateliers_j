class Product < ApplicationRecord
  has_many :orders

  mount_uploader :photo, PhotoUploader
end
