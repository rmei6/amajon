class AddDeliveryDays < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :delivery_days, :integer, null:false
  end
end
