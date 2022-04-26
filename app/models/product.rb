class Product < ApplicationRecord
    validates :name,:description,:department_id,:price, presence:true

    belongs_to :department
end
