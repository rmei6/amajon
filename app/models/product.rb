class Product < ApplicationRecord
    validates :name,:description,:department,:price, presence:true
end
