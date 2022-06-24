class AddReviewColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :review, :float, null:false
  end
end
