class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :user_name, null:false
      t.integer :user_id, null:false
      t.integer :product_id, null:false
      t.text :body, null:false
      t.integer :stars, null:false
      t.timestamps
    end
    add_index :reviews, :user_id
    add_index :reviews, :product_id
    add_index :reviews, [:user_id, :product_id], unique:true
  end
end
