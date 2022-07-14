class Addproductreviewnum < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :review_num, :integer, null:false
  end
end
