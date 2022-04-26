class Changeproduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :department
    add_column :products, :department_id, :integer, null:false
    add_index :products, :department_id
  end
end
