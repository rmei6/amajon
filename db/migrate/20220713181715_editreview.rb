class Editreview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :headline, :text, null:false
  end
end
