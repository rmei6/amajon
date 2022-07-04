class Review < ApplicationRecord
  validates :user_name, :user_id, :product_id, :body, :stars, presence:true

  belongs_to :user
  belongs_to :product,
    foreign_key: :product_id
end
