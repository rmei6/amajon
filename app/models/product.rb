class Product < ApplicationRecord
    validates :name,:description,:department,:delivery_days,:price, presence:true
end
