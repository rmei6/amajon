class EditProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :department_id
    add_column :products, :department, :string, null:false
  end
end
