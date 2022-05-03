class Product < ApplicationRecord
    validates :name,:description,:department,:delivery_days,:price, presence:true

    has_one_attached :photo
end
