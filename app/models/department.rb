class Department < ApplicationRecord
    validates :name, presence:true

    has_many :products,
        primary_key: :id,
        foreign_key: :department_id,
        class_name: :Product

end
