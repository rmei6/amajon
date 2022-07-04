class Product < ApplicationRecord
    validates :name,:description,:department,:delivery_days,:price, :review, presence:true
    #need to add review column

    has_one_attached :photo

    has_many :reviews,
        foreign_key: :product_id
    has_many :carts,
        foreign_key: :product_id
end
