class AddReviewColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :review, :integer, null:false
  end
end
